/*
 * generated by Xtext 2.13.0
 */
package com.example.ide

import com.example.ClassesRuntimeModule
import com.example.ClassesStandaloneSetup
import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class ClassesIdeSetup extends ClassesStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new ClassesRuntimeModule, new ClassesIdeModule))
	}
	
}
