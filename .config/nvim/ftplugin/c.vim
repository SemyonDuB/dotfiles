colorscheme purify

set path+=**
set cindent
set cinoptions+={
set cinoptions+=(0
set makeprg=make\ -C\ ./bin\ -j3
set completeopt-=preview

let g:ycm_semantic_triggers =  { 'cpp,objcpp,c++' : ['->', '.', '::', 're!.'] }
