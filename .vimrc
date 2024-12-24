call plug#begin('~/.vim/plugged')

" theme
Plug 'morhetz/gruvbox'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" git airline with
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

call plug#end()

if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark    " Setting dark mode
"set background=light   " Setting light mode

let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 0
" #########################################################


" ########################
" 라인넘버 보여주기
set number "relativenumber

" 자동 들여쓰기
set autoindent

" C 스타일 자동 들여쓰기
set cindent

" <Tab> 키를 누를 때 공백 삽입
set expandtab

" 마우스 사용
set mouse=a

" 행 번호 표시
set number

" 열 너비
set shiftwidth=4

" 스마트 들여쓰기
set smartindent

" 탭 크기
set tabstop=4

" 줄 바꿈 여부
set wrap

" history
set history=200

" search
set hls
set is

" file encodings
set fencs=ucs-bom,utf-8,default,latin1,euc-kr

" custom filetype
" au BufNewFile,BufRead *.pug setf pug
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType pug setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType sass setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2

