/*
 * generated by Xtext 2.13.0
 */
package com.example

import org.eclipse.xtext.conversion.IValueConverterService
import com.example.services.ClassesValueConverters

/**
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
class ClassesRuntimeModule extends AbstractClassesRuntimeModule {
	override Class<? extends IValueConverterService> bindIValueConverterService() {
		ClassesValueConverters
	}
}