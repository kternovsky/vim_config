"UltiSnips
let g:UltiSnipsExpandTrigger="<C-L>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]
"inoremap <c-K> <c-X><c-U>
function! GetSnipsInCurrentScope()
	return UltiSnips#SnippetsInCurrentScope()
endfunction
