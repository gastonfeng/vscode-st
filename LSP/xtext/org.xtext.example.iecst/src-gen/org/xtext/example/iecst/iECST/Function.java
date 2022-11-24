/**
 * generated by Xtext 2.25.0
 */
package org.xtext.example.iecst.iECST;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Function</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtext.example.iecst.iECST.Function#getName <em>Name</em>}</li>
 *   <li>{@link org.xtext.example.iecst.iECST.Function#getDtype <em>Dtype</em>}</li>
 * </ul>
 *
 * @see org.xtext.example.iecst.iECST.IECSTPackage#getFunction()
 * @model
 * @generated
 */
public interface Function extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.xtext.example.iecst.iECST.IECSTPackage#getFunction_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.xtext.example.iecst.iECST.Function#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Dtype</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Dtype</em>' attribute.
   * @see #setDtype(String)
   * @see org.xtext.example.iecst.iECST.IECSTPackage#getFunction_Dtype()
   * @model
   * @generated
   */
  String getDtype();

  /**
   * Sets the value of the '{@link org.xtext.example.iecst.iECST.Function#getDtype <em>Dtype</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Dtype</em>' attribute.
   * @see #getDtype()
   * @generated
   */
  void setDtype(String value);

} // Function
