" Basic Command
set nu relativenumber
set mouse=a
set ignorecase
set autoindent
syntax on
command Nd execute ":NERDTree"

" These next four lines are so that I break the habit of using the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Indetation and spacing rules
set expandtab
set ts=4
set shiftwidth=4
set softtabstop=4
let mapleader =","

" For undo history
set undofile
set undodir=~/.vim/undodir

" Template
au bufNewFile *.c 0r ~/.vim/templates/default/default.c
au bufNewFile *.sh 0r ~/.vim/templates/default/default.sh
au bufNewFile *.md 0r ~/.vim/templates/default/default.md
au bufNewFile *.ptex 0r ~/.vim/templates/default/presentation.tex
au bufNewFile *.ftex 0r ~/.vim/templates/default/fiche.tex
au bufNewFile *.html 0r ~/.vim/templates/default/default.html

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

"MARKDOWN
	autocmd FileType markdown,rmd,md map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd FileType markdown,rmd,md inoremap ,n ---<Enter><Enter>
	autocmd FileType markdown,rmd,md inoremap ,bo ****<++><Esc>F*hi
    autocmd FileType markdown,rmd,md inoremap ,it __<Space><++><Esc>5hi
	autocmd FileType markdown,rmd,md inoremap ,im * [](#<++>)<Enter><++><Esc>kF[a
	autocmd FileType markdown,rmd,md inoremap ,e **<++><Esc>F*i
	autocmd FileType markdown,rmd,md inoremap ,h ====<Space><++><Esc>F=hi
	autocmd FileType markdown,rmd,md inoremap ,p ![](<++>)<++><Esc>F[a
	autocmd FileType markdown,rmd,md inoremap ,a [](<++>)<++><Esc>F[a
	autocmd FileType markdown,rmd,md inoremap ,1 #<Space><Enter><Enter><++><Esc>2kA
	autocmd FileType markdown,rmd,md inoremap ,2 ##<Space><Enter><Enter><++><Esc>2kA
	autocmd FileType markdown,rmd,md inoremap ,3 ###<Space><Enter><Enter><++><Esc>2kA
    autocmd FileType markdown,rmd,md inoremap ,4 #### <Space><Enter><Enter><++><Esc>2kA
	autocmd FileType markdown,rmd,md inoremap ,l --------<Enter>
	autocmd FileType markdown,rmd,md inoremap ,ba <Esc>o<Enter>```{bash}<CR>```<CR><CR><++><esc>2kO
	autocmd FileType markdown,rmd,md inoremap ,c ```<cr>```<cr><cr><esc>2kO


""""LATEX
"	" Word count:
"	autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>
"	" Code snippets
	autocmd FileType tex inoremap ,fr \begin{frame}<Enter><Enter>\end{frame}<Enter><Enter><++><Esc>3ki<Tab>
"	autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
"	autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
"	autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
"	autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
"	autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
"	autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
"	autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
"	autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
"	autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd Filetype tex inoremap ,gra \includegraphics[]{<++>}<Enter><Esc>kf[a
	autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><++><Esc>2kA<Tab>\item<Space>
	autocmd FileType tex inoremap ,li <Enter>\item<Space>
"	autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
"	autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
"	autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
"	autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
"	autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
"	autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
"	autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
"	autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
"	autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
"	autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
"	autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
"	autocmd FileType tex inoremap ,bt {\blindtext}
"	autocmd FileType tex inoremap ,nu $\varnothing$
"	autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
"	autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i
"
"
"HTML
    autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
    autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
    autocmd FileType html inoremap ,1 <h1></h1><Enter><++><Esc>kf<i
    autocmd FileType html inoremap ,2 <h2></h2><Enter><++><Esc>kf<i
    autocmd FileType html inoremap ,3 <h3></h3><Enter><++><Esc>kf<i
    autocmd FileType html inoremap ,p <p></p><Enter><++><Esc>0kf>a
    autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
    autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
    autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><++><Esc>02kf>a
    autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
    autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><++><Esc>02kf>a
    autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
    autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
    autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
    autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
    autocmd FileType html inoremap ,tab <table><Enter></table><Esc>O
    autocmd FileType html inoremap ,< &#x3008;
    autocmd FileType html inoremap ,> &#x3009;

"C
    autocmd Filetype c inoremap ,i <Esc>ggo#include<><Esc>$i
    autocmd Filetype c inoremap ,f <Space>(<++>)<Space>{<Enter><++><Enter>}<Esc>2k0i
    autocmd Filetype c inoremap /* /*<Space><Space><Space>*/<Esc>3hi
