" Use Vim settings, rather than Vi settings.
set nocompatible

" Enable pathogen.
execute pathogen#infect()

" Enable syntax.
syntax on

" Enable ftplugins and indent files.
filetype plugin indent on

" Columna delimitadora de 80 caracteres.
"if version >= 703
"	set colorcolumn=80
"endif

" Variables for template interpolation.
let email_address = "---"
let fullname = "Felix Barbeira"
let company_name = "---"
let template_date_format_string = "%a %b %d %Y"

" Highlight search and move cursor as you type search terms.
"set hlsearch incsearch

" When editing a file, always jump to the last cursor position.
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif

" Sin beep ni aviso visual.
set vb t_vb=

" Remapeo de comandos.
nmap :X :x
nmap :W :w
nmap :Q :q
nmap :WQ :wq

" Enable paste mode vim.
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>
set showmode

" Enable line numbers and colorize them.
set number
set numberwidth=5
hi LineNr cterm=none ctermfg=darkgrey ctermbg=black

" SignColumn.
hi SignColumn ctermbg=none

" Syntastic options.
"
" Jump to the first error line when check.
let g:syntastic_auto_jump = 1
"let g:syntastic_error_symbol='⛔ '
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol='💀 '
"let g:syntastic_warning_symbol='🐞 '
"let g:syntastic_style_warning_symbol='🐷 '
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
"let g:syntastic_auto_loc_list=1
"let g:syntastic_loc_list_height=5

" Statusline explained.
"
"set statusline+=[%{&ff}] "file format
"set statusline+=%y      "filetype
"set statusline+=%f      "tail of the filename
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%#todo#
"set statusline+=%{fugitive#statusline()} "show git branch
"set statusline+=%*
"set statusline+=%=      "left/right separator
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file

"Same as above, but everything in one line.
set laststatus=2
set statusline=[%{&ff}]%y%f%h%m\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ %{fugitive#statusline()}\ \ \ \ \ \ \ \ \ \ %#errormsg#%{SyntasticStatuslineFlag()}%*%=%c,%l/%L\ \ %P

" change highlighting based on mode
"if version >= 700
"hi statusLine cterm=none ctermfg=white ctermbg=8
"  au InsertLeave * highlight StatusLine cterm=none ctermfg=grey ctermbg=black
"  au InsertEnter * highlight StatusLine cterm=bold ctermfg=white ctermbg=black
"endif
highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\	/
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/
