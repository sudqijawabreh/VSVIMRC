set incsearch "show matching search incrementally
set tabstop=4 "set tab to 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set hlsearch "highlight search
set ignorecase  "ignore case when searching
set smartcase "if upper case was used search will be case insensitive
set nowrap " disable line wrapping

" use <c-v> and <c-c> to copy from and to clipboard don't use for regular
" usage you should use p and y
noremap <C-v> "*p
vnoremap <C-c> "*y
inoremap <C-v> <Esc>"*pi
cnoremap <C-v> <C-r>*

" disable search highlight
nnoremap <leader>h :noh<cr>
" paste last copied text 
noremap <leader>p "0p
" good to navigate wrapped lines
nmap j gj
nmap k gk
" got to the method or interface impelementation
nnoremap gi :vsc Edit.GoToImplementation<CR>
" find all references
map gr :vsc Edit.FindAllReferences<CR>
map gp :vsc Edit.PeekDefinition<CR>
" got that last edit location
map g; `.
" user ctrl + s to save the file
map <c-s> :w<CR>
nnoremap gt :vsc Window.NextTab<cr>
nnoremap gT :vsc Window.PreviousTab<cr>
" navigate backward and forward when jumping between files
" this can be userful when you jump to the defention of a method or a class
nnoremap <C-o> :vsc View.NavigateBackward<cr>
nnoremap <C-i> :vsc View.NavigateForward<cr>
" initate refactrogin for the item you are on 
" you can finish refactoring by pressing enter in insert mode
nnoremap <leader>r :vsc Refactor.Rename<cr>

" show all files that have been changed
nnoremap <leader>gc :vsc Team.Git.GoToGitChanges<cr>
" annotate the file with git blame
nnoremap <leader>gb :vsc Team.Git.Annotate<cr>
" show changes you've done to the current file
nnoremap <leader>c :vsc Team.Git.CompareWithUnmodified<cr>
" show variable type or method signature
nnoremap <S-k> :vsc Edit.QuickInfo<CR>
" open the folder containing the current file
nnoremap gof :vsc File.OpenContainingFolder<cr>
" show the current file in the solution explorer
nnoremap <leader>; :vsc SolutionExplorer.SyncWithActiveDocument<CR>
"close all tabs but the current one 
"notice the o is in upper case
nnoremap <C-W>O :vsc File.CloseAllButThis<CR>
" use < to indent code that you select using visual mode
vmap < <gv
vmap > >gv
" search for the selected text 
vnoremap // y/\V<C-R>"<CR>
" add or remove break point at the current line
nnoremap <leader>b :vsc Debug.ToggleBreakpoint<cr>
" when opening file diff
" go to the prev diff
nnoremap [c :vsc Diff.PreviousDifference<cr>
" go to the next diff
nnoremap ]c :vsc Diff.NextDifference<cr>
