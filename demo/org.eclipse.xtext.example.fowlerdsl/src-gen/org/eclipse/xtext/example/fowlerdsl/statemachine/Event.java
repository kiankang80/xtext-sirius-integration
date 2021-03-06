/**
 */
package org.eclipse.xtext.example.fowlerdsl.statemachine;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Event</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.example.fowlerdsl.statemachine.Event#getName <em>Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.example.fowlerdsl.statemachine.Event#getCode <em>Code</em>}</li>
 *   <li>{@link org.eclipse.xtext.example.fowlerdsl.statemachine.Event#getGuard <em>Guard</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.example.fowlerdsl.statemachine.StatemachinePackage#getEvent()
 * @model
 * @generated
 */
public interface Event extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.example.fowlerdsl.statemachine.StatemachinePackage#getEvent_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.example.fowlerdsl.statemachine.Event#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Code</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Code</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Code</em>' attribute.
   * @see #setCode(int)
   * @see org.eclipse.xtext.example.fowlerdsl.statemachine.StatemachinePackage#getEvent_Code()
   * @model
   * @generated
   */
  int getCode();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.example.fowlerdsl.statemachine.Event#getCode <em>Code</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Code</em>' attribute.
   * @see #getCode()
   * @generated
   */
  void setCode(int value);

  /**
   * Returns the value of the '<em><b>Guard</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Guard</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Guard</em>' containment reference.
   * @see #setGuard(Guard)
   * @see org.eclipse.xtext.example.fowlerdsl.statemachine.StatemachinePackage#getEvent_Guard()
   * @model containment="true"
   * @generated
   */
  Guard getGuard();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.example.fowlerdsl.statemachine.Event#getGuard <em>Guard</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Guard</em>' containment reference.
   * @see #getGuard()
   * @generated
   */
  void setGuard(Guard value);

} // Event
