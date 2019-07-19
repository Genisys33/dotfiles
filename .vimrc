set nu
set mouse=a
set ignorecase

" These next four lines are so that I break the habit of using the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Indetation and spacing rules
set autoindent
set expandtab
set ts=4
set shiftwidth=4
set softtabstop=4

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul


"""HTML
" inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
" 
" autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
" autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
" autocmd FileType html inoremap ,1 <h1></h1><Enter><Enter><++><Esc>2kf<i
" autocmd FileType html inoremap ,2 <h2></h2><Enter><Enter><++><Esc>2kf<i
" autocmd FileType html inoremap ,3 <h3></h3><Enter><Enter><++><Esc>2kf<i
" autocmd FileType html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
" autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
" autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
" autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
" autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
" autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
" autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
" autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
" autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
" autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
" autocmd FileType html inoremap ,tab <table><Enter></table><Esc>O

" For undo history
set undofile
set undodir=~/.vim/undodir
