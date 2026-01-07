if exists("b:current_syntax")
  finish
endif

syn case match

syn match blotsComment "//.*$"
syn region blotsString start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region blotsString start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline

syn match blotsNumber "\v(^|[^0-9A-Za-z_])\zs[-+]?\d+(_\d+)*(\.\d+)?([eE][-+]?\d+)?"
syn match blotsNumber "\v(^|[^0-9A-Za-z_])\zs\.\d+([eE][-+]?\d+)?"
syn match blotsInputReference "#[A-Za-z_][A-Za-z0-9_]*"

syn keyword blotsKeyword if then else do return output
syn keyword blotsBoolean true false
syn keyword blotsNull null
syn keyword blotsOperatorWord and or not via into where

syn match blotsOperator "=>"
syn match blotsOperator "\\.\\.\\."
syn match blotsOperator "\\.=="
syn match blotsOperator "\\.!="
syn match blotsOperator "\\.<="
syn match blotsOperator "\\.<"
syn match blotsOperator "\\.>="
syn match blotsOperator "\\.>"
syn match blotsOperator "=="
syn match blotsOperator "!="
syn match blotsOperator "<="
syn match blotsOperator "<"
syn match blotsOperator ">="
syn match blotsOperator ">"
syn match blotsOperator "&&"
syn match blotsOperator "||"
syn match blotsOperator "??"
syn match blotsOperator "\\V+"
syn match blotsOperator "\\V-"
syn match blotsOperator "\\V*"
syn match blotsOperator "\\V/"
syn match blotsOperator "\\V%"
syn match blotsOperator "\\V^"
syn match blotsOperator "\\V="
syn match blotsOperator "\\V!"
syn match blotsOperator "\\V?"
syn match blotsDelimiter "[\[\]{}(),:;]"

hi def link blotsComment Comment
hi def link blotsString String
hi def link blotsNumber Number
hi def link blotsInputReference Identifier
hi def link blotsKeyword Keyword
hi def link blotsBoolean Boolean
hi def link blotsNull Constant
hi def link blotsOperatorWord Operator
hi def link blotsOperator Operator
hi def link blotsDelimiter Delimiter

let b:current_syntax = "blots"
