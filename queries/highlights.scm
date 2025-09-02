; highlights.scm
; See this for full list: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

; comments
(line_comment) @comment
(block_comment) @comment

; Argument definition
(argument 
  name: (identifier) @variable.parameter)

; Variables
(local_var 
  name: (identifier) @variable)

(environment_var 
  name:(identifier) @variable.builtin)

(builtin_var) @constant.builtin

; Functions
(function_definition
  name: (variable) @function)

; For function calls
(named_argument
  name: (identifier) @variable.parameter)

; Methods
(method_call
  name: (method_name) @function.method.call)

(method_name) @function.method.call

; Classes
(class) @type
(parent_class) @type

(instance_method_name) @function.method
(class_method_name) @function.method

; Literals
(bool) @boolean
(number) @number
(float) @float
(string) @string
(escape_sequence) @string.escape
(symbol) @string.special.symbol

; Conditionals
[
  "if"
  "while"
  "case"
  "switch"
  "?"
  "!?"
  "??"
]
@keyword.conditional

; Iterations
[ "for" "forBy" ] @keyword.repeat
; SinOsc.ar()!2
(duplicated_statement) @keyword.repeat

; Operators
[
  "&&"
  "||"
  "&"
  "|"
  "^"
  "=="
  "!="
  "<"
  "<="
  ">"
  ">="
  "<<"
  ">>"
  "+"
  "-"
  "*"
  "/"
  "%"
  "="
  "|@|"
  "@@"
  "@|@"
] @operator

; Keywords
[
  "arg"
  "classvar"
  "const"
  ; "super"
  ; "this"
  "var"
] @keyword

; Brackets
[ "(" ")" "[" "]" "{" "}" "|" ] @punctuation.bracket

; Delimeters
[ ";" "." "," ] @punctuation.delimiter
