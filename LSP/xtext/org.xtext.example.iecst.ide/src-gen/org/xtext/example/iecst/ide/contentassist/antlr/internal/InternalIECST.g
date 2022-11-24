/*
 * generated by Xtext 2.25.0
 */
grammar InternalIECST;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.xtext.example.iecst.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.example.iecst.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.xtext.example.iecst.services.IECSTGrammarAccess;

}
@parser::members {
	private IECSTGrammarAccess grammarAccess;

	public void setGrammarAccess(IECSTGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleModel
entryRuleModel
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getModelAccess().getAlternatives()); }
		(rule__Model__Alternatives)*
		{ after(grammarAccess.getModelAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleProgram
entryRuleProgram
:
{ before(grammarAccess.getProgramRule()); }
	 ruleProgram
{ after(grammarAccess.getProgramRule()); } 
	 EOF 
;

// Rule Program
ruleProgram 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getProgramAccess().getGroup()); }
		(rule__Program__Group__0)
		{ after(grammarAccess.getProgramAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFunctionBlock
entryRuleFunctionBlock
:
{ before(grammarAccess.getFunctionBlockRule()); }
	 ruleFunctionBlock
{ after(grammarAccess.getFunctionBlockRule()); } 
	 EOF 
;

// Rule FunctionBlock
ruleFunctionBlock 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFunctionBlockAccess().getGroup()); }
		(rule__FunctionBlock__Group__0)
		{ after(grammarAccess.getFunctionBlockAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFunction
entryRuleFunction
:
{ before(grammarAccess.getFunctionRule()); }
	 ruleFunction
{ after(grammarAccess.getFunctionRule()); } 
	 EOF 
;

// Rule Function
ruleFunction 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFunctionAccess().getGroup()); }
		(rule__Function__Group__0)
		{ after(grammarAccess.getFunctionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleType
entryRuleType
:
{ before(grammarAccess.getTypeRule()); }
	 ruleType
{ after(grammarAccess.getTypeRule()); } 
	 EOF 
;

// Rule Type
ruleType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypeAccess().getGroup()); }
		(rule__Type__Group__0)
		{ after(grammarAccess.getTypeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDtypes
entryRuleDtypes
:
{ before(grammarAccess.getDtypesRule()); }
	 ruleDtypes
{ after(grammarAccess.getDtypesRule()); } 
	 EOF 
;

// Rule Dtypes
ruleDtypes 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDtypesAccess().getAlternatives()); }
		(rule__Dtypes__Alternatives)
		{ after(grammarAccess.getDtypesAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getProgramsAssignment_0()); }
		(rule__Model__ProgramsAssignment_0)
		{ after(grammarAccess.getModelAccess().getProgramsAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getFunctionsAssignment_1()); }
		(rule__Model__FunctionsAssignment_1)
		{ after(grammarAccess.getModelAccess().getFunctionsAssignment_1()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getFunctionbAssignment_2()); }
		(rule__Model__FunctionbAssignment_2)
		{ after(grammarAccess.getModelAccess().getFunctionbAssignment_2()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getTypesAssignment_3()); }
		(rule__Model__TypesAssignment_3)
		{ after(grammarAccess.getModelAccess().getTypesAssignment_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Dtypes__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDtypesAccess().getBOOLKeyword_0()); }
		'BOOL'
		{ after(grammarAccess.getDtypesAccess().getBOOLKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getSINTKeyword_1()); }
		'SINT'
		{ after(grammarAccess.getDtypesAccess().getSINTKeyword_1()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getUSINTKeyword_2()); }
		'USINT'
		{ after(grammarAccess.getDtypesAccess().getUSINTKeyword_2()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getINTKeyword_3()); }
		'INT'
		{ after(grammarAccess.getDtypesAccess().getINTKeyword_3()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getUINTKeyword_4()); }
		'UINT'
		{ after(grammarAccess.getDtypesAccess().getUINTKeyword_4()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getDINTKeyword_5()); }
		'DINT'
		{ after(grammarAccess.getDtypesAccess().getDINTKeyword_5()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getUDINTKeyword_6()); }
		'UDINT'
		{ after(grammarAccess.getDtypesAccess().getUDINTKeyword_6()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getLINTKeyword_7()); }
		'LINT'
		{ after(grammarAccess.getDtypesAccess().getLINTKeyword_7()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getULINTKeyword_8()); }
		'ULINT'
		{ after(grammarAccess.getDtypesAccess().getULINTKeyword_8()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getREALKeyword_9()); }
		'REAL'
		{ after(grammarAccess.getDtypesAccess().getREALKeyword_9()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getLREALKeyword_10()); }
		'LREAL'
		{ after(grammarAccess.getDtypesAccess().getLREALKeyword_10()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getTIMEKeyword_11()); }
		'TIME'
		{ after(grammarAccess.getDtypesAccess().getTIMEKeyword_11()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getTODKeyword_12()); }
		'TOD'
		{ after(grammarAccess.getDtypesAccess().getTODKeyword_12()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getDTKeyword_13()); }
		'DT'
		{ after(grammarAccess.getDtypesAccess().getDTKeyword_13()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getBYTEKeyword_14()); }
		'BYTE'
		{ after(grammarAccess.getDtypesAccess().getBYTEKeyword_14()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getWORDKeyword_15()); }
		'WORD'
		{ after(grammarAccess.getDtypesAccess().getWORDKeyword_15()); }
	)
	|
	(
		{ before(grammarAccess.getDtypesAccess().getDWORDKeyword_16()); }
		'DWORD'
		{ after(grammarAccess.getDtypesAccess().getDWORDKeyword_16()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__0__Impl
	rule__Program__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getPROGRAMKeyword_0()); }
	'PROGRAM'
	{ after(grammarAccess.getProgramAccess().getPROGRAMKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__1__Impl
	rule__Program__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getNameAssignment_1()); }
	(rule__Program__NameAssignment_1)
	{ after(grammarAccess.getProgramAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getEND_PROGRAMKeyword_2()); }
	'END_PROGRAM'
	{ after(grammarAccess.getProgramAccess().getEND_PROGRAMKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FunctionBlock__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionBlock__Group__0__Impl
	rule__FunctionBlock__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionBlock__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionBlockAccess().getFUNCTION_BLOCKKeyword_0()); }
	'FUNCTION_BLOCK'
	{ after(grammarAccess.getFunctionBlockAccess().getFUNCTION_BLOCKKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionBlock__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionBlock__Group__1__Impl
	rule__FunctionBlock__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionBlock__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionBlockAccess().getNameAssignment_1()); }
	(rule__FunctionBlock__NameAssignment_1)
	{ after(grammarAccess.getFunctionBlockAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionBlock__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionBlock__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionBlock__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionBlockAccess().getEND_FUNCTION_BLOCKKeyword_2()); }
	'END_FUNCTION_BLOCK'
	{ after(grammarAccess.getFunctionBlockAccess().getEND_FUNCTION_BLOCKKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Function__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Function__Group__0__Impl
	rule__Function__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionAccess().getFUNCTIONKeyword_0()); }
	'FUNCTION'
	{ after(grammarAccess.getFunctionAccess().getFUNCTIONKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Function__Group__1__Impl
	rule__Function__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionAccess().getNameAssignment_1()); }
	(rule__Function__NameAssignment_1)
	{ after(grammarAccess.getFunctionAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Function__Group__2__Impl
	rule__Function__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionAccess().getColonKeyword_2()); }
	':'
	{ after(grammarAccess.getFunctionAccess().getColonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Function__Group__3__Impl
	rule__Function__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionAccess().getDtypeAssignment_3()); }
	(rule__Function__DtypeAssignment_3)
	{ after(grammarAccess.getFunctionAccess().getDtypeAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Function__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionAccess().getEND_FUNCTIONKeyword_4()); }
	'END_FUNCTION'
	{ after(grammarAccess.getFunctionAccess().getEND_FUNCTIONKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Type__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group__0__Impl
	rule__Type__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getTYPEKeyword_0()); }
	'TYPE'
	{ after(grammarAccess.getTypeAccess().getTYPEKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group__1__Impl
	rule__Type__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getNameAssignment_1()); }
	(rule__Type__NameAssignment_1)
	{ after(grammarAccess.getTypeAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getEND_TYPEKeyword_2()); }
	'END_TYPE'
	{ after(grammarAccess.getTypeAccess().getEND_TYPEKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__ProgramsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getProgramsProgramParserRuleCall_0_0()); }
		ruleProgram
		{ after(grammarAccess.getModelAccess().getProgramsProgramParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__FunctionsAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getFunctionsFunctionParserRuleCall_1_0()); }
		ruleFunction
		{ after(grammarAccess.getModelAccess().getFunctionsFunctionParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__FunctionbAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getFunctionbFunctionBlockParserRuleCall_2_0()); }
		ruleFunctionBlock
		{ after(grammarAccess.getModelAccess().getFunctionbFunctionBlockParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__TypesAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getTypesTypeParserRuleCall_3_0()); }
		ruleType
		{ after(grammarAccess.getModelAccess().getTypesTypeParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getProgramAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getProgramAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionBlock__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFunctionBlockAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getFunctionBlockAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFunctionAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getFunctionAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Function__DtypeAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFunctionAccess().getDtypeDtypesParserRuleCall_3_0()); }
		ruleDtypes
		{ after(grammarAccess.getFunctionAccess().getDtypeDtypesParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getTypeAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
