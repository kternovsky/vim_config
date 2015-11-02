"JavaScript

fun! JavascriptIncludeExpr(file)
	if(filereadable(a:file))
		return a:file
	else
		let l:file2 = substitute(substitute(a:file,'\\js$','','g'),'$','/index.js','g')
		return l:file2
	endif
endfun

fun! SetupJavascriptOptions()
	setlocal include=require(.\\zs[^'\"]*\\ze
	setlocal includeexpr=javascriptIncludeExpr(v:fname)
	setlocal suffixesadd=.js
	setlocal equalprg=js-beautify\ -t\ -b\ \"expand\"\ -f\ -
endfun

au FileType javascript call SetupJavascriptOptions()

"LaTeX
fun! SetupLatexOptions()
	setlocal errorformat=%f:%l%\ %m
endfun

au FileType tex call SetupLatexOptions()

"C#
fun! SetupCSharpOptions()
	setlocal makeprg=xbuild\ /nologo\ /v:q\ /property:GenerateFullPaths=true
	comp mcs
endfun

au FileType cs call SetupCSharpOptions()

"C, C++
fun! SetupCAndCppOptions()
	set path+=/usr/include,/usr/local/include
endfun

au FileType c,cpp call SetupCAndCppOptions()

"m4
fun! SetupM4Options()
	setlocal include=^include(
endfun

"mail
fun! SetupMailOptions()
	setlocal spell nowrap lbr
endfun!

au FileType mail call SetupMailOptions()

"F#
fun! SetupFSharpOptions()
	setlocal et
endfun!
au FileType fsharp call SetupFSharpOptions()
