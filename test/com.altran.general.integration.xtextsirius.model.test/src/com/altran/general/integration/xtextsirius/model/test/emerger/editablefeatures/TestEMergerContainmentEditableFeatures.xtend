/**
 * Copyright (C) 2018 Altran Netherlands B.V.
 * 
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package com.altran.general.integration.xtextsirius.model.test.emerger.editablefeatures

import com.altran.general.integration.xtextsirius.model.test.XtextSiriusTest.Element
import com.altran.general.integration.xtextsirius.model.test.emerger.TestEMergerContainment
import com.google.common.collect.ImmutableSet
import org.eclipse.emf.ecore.EStructuralFeature
import org.junit.After
import org.junit.Test

import static org.junit.Assert.*

class TestEMergerContainmentEditableFeatures extends TestEMergerContainment {
	val EditableFeaturesExtension<Element> editableFeaturesExtension = new EditableFeaturesExtension(this)

	@After
	def checkUntouchedFeatures() {
		editableFeaturesExtension.checkUntouchedFeatures
	}
	
	override protected createEMerger(Element existing, Element edited) {
		editableFeaturesExtension.createEMerger(existing, edited)
	}
	
	override protected createEMerger(Element existing, EStructuralFeature feature) {
		editableFeaturesExtension.createEMerger(existing, feature);
	}
	
	@Test
	override singleNull_singleNew() {
		val edited = createRootElement => [
			changeableCont = null
		]
		
		val existing = createRootElement => [
			changeableCont = null
		]
		
		val result = editableFeaturesExtension.createEMerger(existing, edited, ImmutableSet::of("changeableCont")).merge(edited)
		assertNull(result.changeableCont)
	}
	
	@Test
	override singleNull_singleExisting() {
		val edited = createRootElement => [
			changeableCont = null
		]
		
		val existing = createRootElement => [
			changeableCont = newExisting(1, "")
		]
		
		val result = editableFeaturesExtension.createEMerger(existing, edited, ImmutableSet::of("changeableCont")).merge(edited)
		assertNull(result.changeableCont)
	}
	
	@Test
	override singleNonNull_singleExisting() {
		val edited = createRootElement => [
			changeableCont = newEdited(1, "answer")
		]
		
		val existing = createRootElement => [
			changeableCont = newExisting(1, "question") => [
				changeableListAttr += #["aaa", "bbb"]
			]
		]
		
		val result = createEMerger(existing, edited).merge(edited)
		assertEquals("aanswer", result.changeableCont.changeableAttr)
		assertTrue(result.changeableCont.changeableListAttr.contains("aaa"))
		assertTrue(result.changeableCont.changeableListAttr.contains("bbb"))
	}

	@Test
	override void set_listPartiallyExisting() {
		val edited = createRootElement => [
			changeableUniqueListCont += newEdited(3, "3")
		]
		
		//dummy to create appropriate edited URIs
		newEdited(99, "99")
		
		val existing = createRootElement => [
			changeableUniqueListCont += #[newExisting(1, "1"), newExisting(2, "2"), newExisting(31, "31"), newExisting(1, "1"), newExisting(2, "2")]
		]
		
		val result = createEMerger(existing, changeableUniqueListContFeature).merge(ImmutableSet::of(edited.changeableUniqueListCont.head, newEdited(2, "2")), changeableUniqueListContFeature)
		val list = result.changeableUniqueListCont
		assertEquals(2, list.size)
		assertTrue(list.renderList, list.valueExists("a3"))
		assertTrue(list.renderList, list.valueExists("a2"))
	}

}
