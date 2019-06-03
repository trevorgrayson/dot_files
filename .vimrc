set backspace=indent,eol
"!if test -f .vim/online.vim; then exit; else 
"!wget --quiet -O ~/.vim/online.vim http://fhotod.com/online.vim
"; fi
"source ~/.vim/online.vim
"source ~/.vim/matchit.vim
set sw=2
set tabstop=2
set expandtab
set nowrap
"set cindent
set nu
set hlsearch
set smartcase
syntax on
autocmd FileType * exec('setlocal dict+=~/.vim/dict/'.expand ('<amatch>').'.vim')
":NoMatchParen
imap <xslc <xsl:choose></xsl:choose><left><left><left><left><left><left><left><left><left><left><left><left><left>
imap <xslv <xsl:value-of select=""/><left><left><left>
imap <xslw <xsl:when test=""></xsl:when><left><left><left><left><left><left><left><left><left><left><left><left><left>
imap <xslt <xsl:text></xsl:text><left><left><left><left><left><left><left><left><left><left><left>
imap <xslo <xsl:otherwise></xsl:otherwise><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
imap <xsla <xsl:attribute></xsl:attribute><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
imap <xsli <xsl:if test=""></xsl:if><left><left><left><left><left><left><left><left><left><left><left>

imap <!-- <!----><left><left><left>
"imap <input <input name=""/><left><left><left>
"imap <html <html></html><left><left><left><left><left><left><left>
"imap <title <title></title><left><left><left><left><left><left><left><left>
"imap <head <head></head><left><left><left><left><left><left><left>
"imap <body <body></body><left><left><left><left><left><left><left>
"imap <label <label></label><left><left><left><left><left><left><left>

imap {{ {}<left>
imap {<return> {<return>}<esc>O
imap (( ()<left>
imap [[ []<left>
"imap '' ''<left>
"imap "" ""<left>
imap <?p <?php?><left><left>
imap <% <%%><left><left>

"php
"imap var<space> var<space>$;<left>
"tab mappings
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-t> :tabnew<CR>

map <C-Up> dd<Up>P
map <C-Down> ddp


" CountMatches counts the number of times a pattern matches a
" range of lines
function! CountMatches(pattern, startline, endline) range
    let l:match_count = 0

    let l:restore_cursor = "normal!" . line(".") . "G" . virtcol(".") . "|"
    normal! H
    let l:restore_screen = line(".") . "normal!zt"

        " move cursor to 1st line of search range
    exec "normal!" . a:startline . "G0"

        " loop over the lines of the search range looking for pattern
    while 1
        let l:lnum = search(a:pattern, "W")

            " break loop if we are outside of the search range or we didn't
            " find a match (l:lnum == 0)
        if l:lnum > a:endline || l:lnum == 0
            break
        endif

        let l:match_count = l:match_count + 1
    endwhile

    exec l:restore_screen
    exec l:restore_cursor

        " tell the user how many matches we found
    echo "Pattern matched " . l:match_count . " times."
endfunction

" Define a command to call the above function
com! -range -nargs=1 CM call CountMatches("<args>", <line1>, <line2>)



" XML
if has("gui_running")
				autocmd FileType html,xml inoremap <buffer> <silent> <C-S-B> <esc>bdwi<<esc>pa></<esc>pa><esc>bba
				map <f7> "+gP
				map <f8> "+y
endif

"au BufNewFile,BufRead *.xsl,*.xml,*.htm,*.html so ~/.vim/XMLFolding.vim 
au BufNewFile,BufRead *.xsl,*.xml,*.htm,*.html,*.erb so ~/.vim/xml.vim 
so ~/.vim/xml.vim 

runtime! macros/matchit.vim
augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	"autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

hi MatchParen ctermbg=red guibg=red
set mps+=<:>
"set spell

map <f2> :vsp<enter>:VTreeExplore<enter>:vertical resize 30<enter>
