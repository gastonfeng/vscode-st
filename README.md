[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://opensource.org/licenses/MIT) ![workflow](https://github.com/Serhioromano/vscode-st/actions/workflows/publish.yml/badge.svg) [![Version](https://vsmarketplacebadge.apphb.com/version-short/serhioromano.vscode-st.svg)](https://marketplace.visualstudio.com/items?itemName=serhioromano.vscode-st) [![Installs](https://vsmarketplacebadge.apphb.com/installs-short/serhioromano.vscode-st.svg)](https://marketplace.visualstudio.com/items?itemName=serhioromano.vscode-st) [![Ratings](https://vsmarketplacebadge.apphb.com/rating-short/serhioromano.vscode-st.svg)](https://marketplace.visualstudio.com/items?itemName=serhioromano.vscode-st)

# Structured Text (IEC 61131-3)

Most complete Structured Text language support. Features includes:

- Syntax highlights in \*.st, \*.iecst files
- Syntax highlights in \*.md (Markdown) files in `iecst` code block
- Syntax highlights in \*.xml files in `<Declaration>` and `<ST>` code block
- Snippets (enter `st ` to see list of all snippets)
- Outline view
- Breadcrumbs code navigation
- Go to Symbol in File
- Formatting (*beta)
- Commands

## Syntax Highlights

Includes syntax highlight based on IEC 61131-3 draft, including namespaces, SFC elements (STEP, ACTION, TRANSITION), constant variables (2#000_1010, 16#1E, INT#23) and more.

![Structured Text syntax highlights example](https://raw.githubusercontent.com/Serhioromano/vscode-st/master/images/demo.gif)

Also highlight in Markdown files

![Example](https://raw.githubusercontent.com/Serhioromano/vscode-st/master/images/md-highlight.png)

## Snippets

Fast growing snippets library. All cycles, conditions and declarations.

## Formatter (work in progress)

Utilize VS Code Formatter API. Use general formatting command short keys. It capitalize all known keywords like `TRUE`, `FALSE`, `IF`, `BOOL`, ... It also add spaces. 

## Note

- The same Author contributed ST support for:
  - [Microsoft Monaco Editor](https://github.com/microsoft/monaco-editor) (base editor for VS Code)
  - [highlight.js](https://github.com/highlightjs/highlightjs-structured-text)
  - [prism.js](https://github.com/PrismJS/prism)
- This extension project is a part of my 320 pages "Learn Structured Text IEC 61131-3" book which I published in [Russian 2020](https://www.youtube.com/watch?v=c0bjUFzSHxs). (translation is on the way)

## Roadmap

- LSP (Language Server Protocol)
- Suggestions
- Lints

## Release Notes

### 1.11.2

- fix - highlight for typed variables with - (`INT#-100`)
- fix - highlight for typed variables with numeric constants (`INT#16#10AE`)
  
### 1.11.1

- enhance - performance improve by using bundler
- enhance - Format add spaces refactored performance and logic improvement.

### 1.10

- fix - Format `<>` and `**` correctly.
- fix - Document format in strings fixed. Now formatting is not done in strings and comments.
- improve - Formatting add spaces new conditions.
- improve - Formatting. Add spaces in comments and other places like before `:=` or after.
- add - file extension `*.TcDUT`, `*.TcPOU`.
- add- syntax highlights for comment attributes like `(* @NESTEDCOMMENTS := 'Yes' *)` generated by CoDeSys 2.3 in `.EXP` files.
- add - Pragma attribute and message highlights like `{attribute 'call_after_global_init_slot' := 'slot'}` or `{info 'TODO: should get another name'}` supported in CoDeSys.
- fix - lot of minor syntax highlight mistakes.
- improve - syntax highlight was fully revised and improved a lot.

### 1.9

- enhance - Outline now understand `CONSTANT` variables. Thanks to @msftrncs.
- fix - `VAR` word break keyword parse issue. Thanks to @msftrncs.
- fix -  Some issues outline tree parse. Thanks to @msftrncs.
- add - Formatting capitalization for all `VAR_*` keywords and `__NEW` and `__DELETE`
- fix -  one closed comment formatting as function #29
- enhance - better snippets titles
- enhance - better symbol navigation in outline and breadcrumbs. Thanks to @msftrncs.
- add - Formatting capitalize time keys like `t#10s` to `T#10S`, `ANY_*` types

### 1.8

- enhance - better snippets titles
- add - support for UNION syntax
- add - Highlight ST inside some XML files key.
- change - enter `st ` to see list of all snippets.
- add - Highlight ST in Markdown files when use `iecst` key.
- add - new icon :))
- add - new formatting architecture that utilize VS Code formatting API.

### 1.7

- add - syntax highlights keyword `__TRY`, `__CATCH`, `__FINALY`, `__NEW`, `__DELETE`, `S=`, `R=`
- add - snippets fo `__TRY`, `__CATCH`, `__FINALY`, `__NEW`, `__DELETE`

Thanks to @nikvoronin

- fix - syntax highlights keyword inside another word
- fix - build document structure with block indented
- add - outline for Structures and Enumerations
- enhance - outline for other elements
- enhance - right click commands now appear only in ST files

### 1.6

- add - outline document structure
- add - Go to symbol in file support
- add - breadcrumbs

### 1.5.0

- improve - function highlights. Now we Highlight all function either user defined or built in.
- improve - variable declaration or `STRUCT` declaration section has got a lot of improvements. We highlight custom types now, and whole section looks much cleaner because scopes were changed.
- improve - If you call for a method of a function block through dot `my_fb.method()` method is highlighted. We also highlight function block properties or parameters.
- add - TODO or TODO: in comments attract an attention
- add - Highlights for action modifiers `myAction(DS, T#3s);` where DS will be highlighted.
- add - Highlights for names of parameters of function block.
- 
### 1.4.0

I've learned few things about syntax highlights. Big refactoring. I added some missing keywords, changed some coloring scopes and improved coloring in general.

### 1.3.0

- add - TYPE creation snippets (enumerations ans structure) and enhance it's syntax highlights
- enhance - Select type out of suggestion list when inset variable in declaration area from snippet
- enhance - Utilise [October 2018](https://code.visualstudio.com/updates/v1_28#_project-level-snippets) feature for multiple prefixes in snippets and add multiple prefixes to some snippets.
- fix - syntax highlights for function_block
- fix - Auto close comments `/*`. `(*`.
- enhance - revision of highlights much better now.

### 1.2.0

- fix - Insert `END_VAR` after `VAR` is inserted.
- fix - highlights for `WORD` datatype.
- fix - other minor changes
- fix - Notification "This file not a structured text language!" #6
- add - Command pallet `Ctrl+Shift+P` command `ST: Format`
- add - same command context menu
- add - user parameter `st.autoFormat`

All 3 make the same. Capitalize constants like `TRUE`, `FALSE`, `EXIT` and others. Right now only few. This is only proof of concept. Later we will add more beautifications.

### 1.1.0

- add - a lot of different snippets
- enhance - syntax highlight like function names, program and function definitions, etc..

### 1.0.0

- fix - extensions metadata tags
- add - new functions to support logi.CAD 3 reference variables.
- enhance - auto indentations inside IF, PROGRAM, VAR, ...
- fix - close `[` bracket
- add - region folding
- improve - keywords case
- improve - readme file
- improve - syntax highlights scopes
- add- few new snippets.
- fix - some keywords highlight issue
- add- new file extensions to support logi.CAD 3 projects.