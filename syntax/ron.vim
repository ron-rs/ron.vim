" Syntax file for RON
" RON: Rusty Object Notation
" Author: Thomas Schaller <torkleyy@gmail.com>
" License: MIT (Expat), see https://github.com/ron-rs/ron.vim/blob/master/LICENSE

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords Some None

syn region ronStruct start="(" end=")" transparent fold
syn region ronSeq start="\[" end="\]" transparent fold
syn region ronMap start="{" end="}" transparent fold

syn region ronAttribute start="#!\?\[" end="\]"

syn region ronString oneline start=/"/ skip=/\\\\\|\\"/ end=/"/
syn region ronString start='r\z(#*\)"' end='"\z1'

syn match ronIdentifier /\<[A-Z]\w*\s*\ze(/ display

syn match ronKey /\<\w\+\ze:/ display

syn match ronInteger /\<[+-]\=[0-9]\(_\=\d\)*\>/ display

syn match ronFloat /\<[+-]\=[0-9]\(_\=\d\)*\.\d\+\>/ display
syn match ronFloat /\<[+-]\=[0-9]\(_\=\d\)*\(\.[0-9]\(_\=\d\)*\)\=[eE][+-]\=[0-9]\(_\=\d\)*\>/ display

syn match ronBoolean /\<\%(true\|false\)\>/ display

syn keyword ronTodo TODO FIXME XXX BUG contained

syn match ronComment /\/\/.*/ contains=ronTodo
syn region ronComment start="/\*" end="\*/" fold extend contains=ronTodo,ronCommentB

hi def link ronString String
hi def link ronInteger Number
hi def link ronFloat Float
hi def link ronBoolean Boolean
hi def link ronTodo Todo
hi def link ronComment Comment
hi def link ronAttribute PreProc
hi def link ronIdentifier Identifier
hi def link ronKey Keyword

let b:current_syntax = "ron"
