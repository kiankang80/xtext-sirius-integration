/**
 * Copyright (C) 2018 Altran Netherlands B.V.
 *
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 */
package com.altran.general.integration.xtextsirius.test.editor.model

import org.junit.Test

class TestFowlerdslCommand extends ATestFowlerdslModel {
	@Test
	def void unchanged() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			null,
			#[
				createCommand => [
					name = "cmd0"
					code = 23
				],
				createCommand => [
					name = "cmd1"
					code = 42
				]
			]
		)
	}
	
	@Test
	def void empty() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			"",
			#[]
		)
	}
	
	@Test
	def void changeFirst() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			"cmd0 22 cmd1 42",
			#[
				createCommand => [
					name = "cmd0"
					code = 22
				],
				createCommand => [
					name = "cmd1"
					code = 42
				]
			]
		)
	}
	
	@Test
	def void changeBoth() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			"cmd0 22 cmd1 43",
			#[
				createCommand => [
					name = "cmd0"
					code = 22
				],
				createCommand => [
					name = "cmd1"
					code = 43
				]
			]
		)
	}
	
	@Test
	def void removeLast() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			"cmd0 23",
			#[
				createCommand => [
					name = "cmd0"
					code = 23
				]
			]
		)
	}
	
	@Test
	def void removeFirst() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			"cmd1 42",
			#[
				createCommand => [
					name = "cmd1"
					code = 42
				]
			]
		)
	}
	
	@Test
	def void replace() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			"cmd2 13",
			#[
				createCommand => [
					name = "cmd2"
					code = 13
				]
			]
		)
	}
	
	@Test
	def void replaceMove() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			"cmd2 13 cmd0 23",
			#[
				createCommand => [
					name = "cmd2"
					code = 13
				],
				createCommand => [
					name = "cmd0"
					code = 23
				]
			]
		)
	}
	
	@Test
	def void insertFirst() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			"cmd2 13 cmd0 23 cmd1 42",
			#[
				createCommand => [
					name = "cmd2"
					code = 13
				],
				createCommand => [
					name = "cmd0"
					code = 23
				],
				createCommand => [
					name = "cmd1"
					code = 42
				]
			]
		)
	}
	
	@Test
	def void insertLast() {
		assertModelEdit(
			model.commands,
			model,
			"cmd0 23  cmd1 42",
			"cmd0 23 cmd1 42 cmd2 13",
			#[
				createCommand => [
					name = "cmd0"
					code = 23
				],
				createCommand => [
					name = "cmd1"
					code = 42
				],
				createCommand => [
					name = "cmd2"
					code = 13
				]
			]
		)
	}
	
	override protected getFeatureName() {
		"commands"
	}
	
}
