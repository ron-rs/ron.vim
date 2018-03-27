if exists('b:did_ftplugin')
    finish
endif
let b:did_ftplugin = 1

let s:save_cpo = &cpo
set cpo&vim

setlocal commentstring=//\ %s

" Add NERDCommenter delimiters
let s:delims = { 'left': '//' }
if exists('g:NERDDelimiterMap')
    if !has_key(g:NERDDelimiterMap, 'ron')
        let g:NERDDelimiterMap.ron = s:delims
    endif
elseif exists('g:NERDCustomDelimiters')
    if !has_key(g:NERDCustomDelimiters, 'ron')
        let g:NERDCustomDelimiters.ron = s:delims
    endif
else
    let g:NERDCustomDelimiters = { 'ron': s:delims }
endif
unlet s:delims

let &cpo = s:save_cpo
unlet s:save_cpo
