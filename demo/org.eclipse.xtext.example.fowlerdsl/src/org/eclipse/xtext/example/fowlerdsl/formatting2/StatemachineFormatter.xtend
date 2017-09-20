/*
 * generated by Xtext
 */
package org.eclipse.xtext.example.fowlerdsl.formatting2;

import com.google.inject.Inject;
import org.eclipse.xtext.example.fowlerdsl.services.StatemachineGrammarAccess;
import org.eclipse.xtext.example.fowlerdsl.statemachine.Command;
import org.eclipse.xtext.example.fowlerdsl.statemachine.Constant;
import org.eclipse.xtext.example.fowlerdsl.statemachine.Event;
import org.eclipse.xtext.example.fowlerdsl.statemachine.RangeGuard;
import org.eclipse.xtext.example.fowlerdsl.statemachine.State;
import org.eclipse.xtext.example.fowlerdsl.statemachine.Statemachine;
import org.eclipse.xtext.example.fowlerdsl.statemachine.Transition;
import org.eclipse.xtext.example.fowlerdsl.statemachine.ValueGuard;
import org.eclipse.xtext.formatting2.AbstractFormatter2;
import org.eclipse.xtext.formatting2.IFormattableDocument;

class StatemachineFormatter extends AbstractFormatter2 {
	
	@Inject extension StatemachineGrammarAccess

	def dispatch void format(Statemachine statemachine, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Event events : statemachine.getEvents()) {
			format(events, document);
		}
		for (Command commands : statemachine.getCommands()) {
			format(commands, document);
		}
		for (Constant constants : statemachine.getConstants()) {
			format(constants, document);
		}
		for (State states : statemachine.getStates()) {
			format(states, document);
		}
	}

	def dispatch void format(Event event, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		format(event.getGuard(), document);
	}

	def dispatch void format(ValueGuard valueguard, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		format(valueguard.getCond(), document);
	}

	def dispatch void format(RangeGuard rangeguard, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		format(rangeguard.getMin(), document);
		format(rangeguard.getMax(), document);
	}

	def dispatch void format(Command command, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		format(command.getGuard(), document);
	}

	def dispatch void format(Constant constant, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		format(constant.getValue(), document);
	}

	def dispatch void format(State state, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Transition transitions : state.getTransitions()) {
			format(transitions, document);
		}
	}

	def dispatch void format(Transition transition, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		format(transition.getGuard(), document);
	}
}
