" Syntax file for RON
" RON: Rusty Object Notation
" Author: Thomas Schaller <torkleyy@gmail.com>

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords Some None

syn region ronStruct start="(" end=")" transparent fold
syn region ronSeq start="\[" end="\]" transparent fold
syn region ronMap start="{" end="}" transparent fold

