colorscheme onehalfdark

hi EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

set path+=**
set cindent
set cinoptions+={
set cinoptions+=(0
set makeprg=make\ -C\ ./bin\ -j3
set completeopt-=preview

let g:ycm_semantic_triggers =  { 'cpp,objcpp,c++' : ['->', '.', '::', 're!.'] }

map <C-K> :Neoformat<cr>
imap <C-K> <c-o>:Neoformat<cr>

noremap <F7> :make!<Cr>
nmap <F5> :CopyDefinition<CR>
nmap <F6> :ImplementDefinition<CR>

command! CopyDefinition :call s:GetDefinitionInfo()
command! ImplementDefinition :call s:ImplementDefinition()

function! s:GetDefinitionInfo()
  exe 'normal ma'
  " Get class
  call search('^\s*\<class\>', 'b')
  exe 'normal ^w"ayw'
  let s:class = @a
  let l:ns = search('^\s*\<namespace\>', 'b')
  " Get namespace
  if l:ns != 0
    exe 'normal ^w"ayw'
    let s:namespace = @a
  else
    let s:namespace = ''
  endif
  " Go back to definition
  exe 'normal `a'
  exe 'normal "aY'
  let s:defline = substitute(@a, ';\n', '', '')
endfunction
 
function! s:ImplementDefinition()
  call append('.', s:defline)
  exe 'normal j'
  " Remove keywords
  s/\<virtual\>\s*//e
  s/\<static\>\s*//e
  if s:namespace == ''
    let l:classString = s:class . "::"
  else
    let l:classString = s:namespace . "::" . s:class . "::"
  endif
  " Remove default parameters
  s/\s\{-}=\s\{-}[^,)]\{1,}//e
  " Add class qualifier
  exe 'normal ^f(bi' . l:classString
  " Add brackets
  exe "normal $o{\<CR>\<TAB>\<CR>}\<CR>\<ESC>kkkk"
  " Fix indentation
  exe 'normal =4j^'
endfunction
