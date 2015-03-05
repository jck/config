nnoremap <buffer> yxx     :.,.Eval<cr>
nnoremap <buffer> yx.     :%Eval<cr>
nnoremap <buffer> yxiw    :Eval <c-r><c-w><cr>
xnoremap <buffer> <enter> :Eval<cr>
" eval-last-sexp
inoremap <buffer> <c-j>   <esc>"9y%:Eval! <c-r>9<cr>%a

" TODO: http://stackoverflow.com/a/17830491/152142
" func! s:fmt(line1, line2) abort
"   call append(lclose, split(dump, "\n"))
"   silent exe lopen.','.lclose.'delete _'
" endf
" command! -buffer -range=% Format :call s:fmt(<line1>, <line2>)

xmap <silent><buffer> af      <Plug>(sexp_outer_list)
omap <silent><buffer> af      <Plug>(sexp_outer_list)
xmap <silent><buffer> if      <Plug>(sexp_inner_list)
omap <silent><buffer> if      <Plug>(sexp_inner_list)
xmap <silent><buffer> aF      <Plug>(sexp_outer_top_list)
omap <silent><buffer> aF      <Plug>(sexp_outer_top_list)
xmap <silent><buffer> iF      <Plug>(sexp_inner_top_list)
omap <silent><buffer> iF      <Plug>(sexp_inner_top_list)
xmap <silent><buffer> ae      <Plug>(sexp_outer_element)
omap <silent><buffer> ae      <Plug>(sexp_outer_element)
xmap <silent><buffer> ie      <Plug>(sexp_inner_element)
omap <silent><buffer> ie      <Plug>(sexp_inner_element)
nmap <silent><buffer> (       <Plug>(sexp_move_to_prev_bracket)
xmap <silent><buffer> (       <Plug>(sexp_move_to_prev_bracket)
omap <silent><buffer> (       <Plug>(sexp_move_to_prev_bracket)
nmap <silent><buffer> )       <Plug>(sexp_move_to_next_bracket)
xmap <silent><buffer> )       <Plug>(sexp_move_to_next_bracket)
omap <silent><buffer> )       <Plug>(sexp_move_to_next_bracket)
nmap <silent><buffer> <M-k>   <Plug>(sexp_move_to_prev_element_head)
xmap <silent><buffer> <M-k>   <Plug>(sexp_move_to_prev_element_head)
omap <silent><buffer> <M-k>   <Plug>(sexp_move_to_prev_element_head)
nmap <silent><buffer> <M-j>   <Plug>(sexp_move_to_next_element_head)
xmap <silent><buffer> <M-j>   <Plug>(sexp_move_to_next_element_head)
omap <silent><buffer> <M-j>   <Plug>(sexp_move_to_next_element_head)
nmap <silent><buffer> [[      <Plug>(sexp_move_to_prev_top_element)
xmap <silent><buffer> [[      <Plug>(sexp_move_to_prev_top_element)
omap <silent><buffer> [[      <Plug>(sexp_move_to_prev_top_element)
nmap <silent><buffer> ]]      <Plug>(sexp_move_to_next_top_element)
xmap <silent><buffer> ]]      <Plug>(sexp_move_to_next_top_element)
omap <silent><buffer> ]]      <Plug>(sexp_move_to_next_top_element)
nmap <silent><buffer> ==      <Plug>(sexp_indent)
nmap <silent><buffer> =-      <Plug>(sexp_indent_top)
nmap <silent><buffer> crf(    <Plug>(sexp_round_head_wrap_list)
nmap <silent><buffer> crf)    <Plug>(sexp_round_tail_wrap_list)
nmap <silent><buffer> crf[    <Plug>(sexp_square_head_wrap_list)
nmap <silent><buffer> crf]    <Plug>(sexp_square_tail_wrap_list)
nmap <silent><buffer> crf{    <Plug>(sexp_curly_head_wrap_list)
nmap <silent><buffer> crf}    <Plug>(sexp_curly_tail_wrap_list)
nmap <silent><buffer> cr(     <Plug>(sexp_round_head_wrap_element)
nmap <silent><buffer> cr)     <Plug>(sexp_round_tail_wrap_element)
nmap <silent><buffer> cr[     <Plug>(sexp_square_head_wrap_element)
nmap <silent><buffer> cr]     <Plug>(sexp_square_tail_wrap_element)
nmap <silent><buffer> cr{     <Plug>(sexp_curly_head_wrap_element)
nmap <silent><buffer> cr}     <Plug>(sexp_curly_tail_wrap_element)
nmap <silent><buffer> <I      <Plug>(sexp_insert_at_list_head)
nmap <silent><buffer> >I      <Plug>(sexp_insert_at_list_tail)
nmap <silent><buffer> gs<bs>  <Plug>(sexp_splice_list)
nmap <silent><buffer> dof     <Plug>(sexp_raise_list)
nmap <silent><buffer> doe     <Plug>(sexp_raise_element)
nmap <silent><buffer> cx<     <Plug>(sexp_swap_list_backward)
nmap <silent><buffer> cx>     <Plug>(sexp_swap_list_forward)
nmap <silent><buffer> cxE     <Plug>(sexp_swap_element_backward)
nmap <silent><buffer> cxe     <Plug>(sexp_swap_element_forward)
nmap <silent><buffer> gsB     <Plug>(sexp_emit_head_element)
nmap <silent><buffer> gsb     <Plug>(sexp_emit_tail_element)
nmap <silent><buffer> gss     <Plug>(sexp_capture_prev_element)
nmap <silent><buffer> gsS     <Plug>(sexp_capture_next_element)

imap <silent><buffer> <BS>    <Plug>(sexp_insert_backspace)
imap <silent><buffer> "       <Plug>(sexp_insert_double_quote)
imap <silent><buffer> (       <Plug>(sexp_insert_opening_round)
imap <silent><buffer> )       <Plug>(sexp_insert_closing_round)
imap <silent><buffer> [       <Plug>(sexp_insert_opening_square)
imap <silent><buffer> ]       <Plug>(sexp_insert_closing_square)
imap <silent><buffer> {       <Plug>(sexp_insert_opening_curly)
imap <silent><buffer> }       <Plug>(sexp_insert_closing_curly)