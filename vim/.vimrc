" Use Vim settings rather than Vi "
    set nocompatible

" Basic Appearance "
    syntax on   " Syntax Highlighting
    set nu      " Line Numbers

" Tab/Spacing "
    set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Auto indent pasted text "
    nnoremap p p=`]<C-o>
    nnoremap P P=`]<C-o>

" Easy Escape"
    imap jk <Esc>
    imap kj <Esc>

" Learning "
    " let g:hardtime_default_on = 1 " Vim Hardtime
    " let g:hardtime_showmsg = 1 " Hardtime Notification

" Vertical Separator "
    if exists('+colorcolumn')
        set colorcolumn=80
    endif

" Status Line "
    set laststatus=2
    let g:lightline = { 'colorscheme': 'one', }

" NERDTree "
    map <C-o> :NerdTreeToggle<CR> " Map Tree to Ctrl-O

" Plugins "
    so ~/.vim/plugins.vim

