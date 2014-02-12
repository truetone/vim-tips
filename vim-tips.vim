" save the current file as root (in case you opened it up without sudo
" accidentally and made changes to it)
:w !sudo tee %

" if you have a file that you can't save because its directory doesn't exist,
" how can you create that directory from the path component of the file?
:!mkdir -p %:h

" turn camelCase into snake_case
:s/\v([a-z])([A-Z])/\1_\L\2/g

" turn camelCase into snake_case (in only the visually selected part of the
" line)
:s/\%V\v([a-z])([A-Z])/\1_\L\2/g

" turn snake_case into camelCase
:s/\v_([a-z])/\u\1/g

" turn snake_case into camelCase (in only the visually selected part of line)
:s/\%V\v_([a-z])/\u\1/g

" execute the contents of the current line in the current file in sh
:.,. w !sh

" run the visually selected lines in the shell (not run as a filter)
:w !sh

" show the contents of all registers
:reg<enter>

" show the contents of register a
:reg a<enter>

" go to the top of the screen
H

" go to the line that is 20 lines below the line that is currently the top of the window
20H

" go to the middle of the window
M

" go to the bottom of the window
L

" go to the tenth line from the bottom of the window
10L

" go to the line that is 20% of the way down in the file
20%

" scroll current line to top of page
zt

" move current line to middle of page
zz

" scroll current line to bottom of page
zb

" scroll one character to the right
zh

" scroll one character to the left
zl

" scroll half a screen to the right
zH

" scroll half a screen to the left
zL

" enter replace mode to repeatedly replace the character under the cursor
R

" make the selected text lower case
gu

" make the selected text upper case
gU

" lower case the whole line
guu

" upper case the whole line
gUU

" uppercase or lowercase the character under the cursor
~

" remove all those nasty ^M characters from the end of each line in a file
:%s/\r//g

" autoindent lines already selected in visual mode
=

" autoindent current line
==

" format the current paragraph
gqap

" list your movements
:jumps

" list your recent commands
:history

" display hex and ASCII value of character under cursor
ga

" display hex value of utf-8 character under cursor
g8

" jumps to last modified line
'.

" jumps to exact position of last modification
`.

" show what is currently mapped to <f6>
:map <f6>

" show all the mappings
:map

" fold: open a fold at the cursor
zo

" fold: decrease the fold level by one
zr

" fold: moves the cursor to the next fold
zj

" fold: moves the cursor to the previous fold
zk

" fold: move to start of current open fold
[z

" fold: Move to end of current open fold
]z

" fold: increase the fold level by one
zm

" fold: decrease the fold level by one
zr

" in visual mode, select a whole word
aw

" in visual mode, select a whole sentence
as

" Paste below the current line, adjusting indentation to match current line
]p

" paste register above current line, leaving cursor after new text
gP

" paste register below current line, leaving cursor after new text
gp

" Paste above the current line, adjusting indentation to match current line
[p

" back a paragraph
{

" forward a paragraph
}

" back a sentence
(

" forward a sentence
)

" find matching parenthesis
%

" same as :wq
ZZ

" show lines containing the word under the cursor
[I

" visually select *around* a set of parentheses.  Try it by moving the cursor
" (somewhere in here) and trying it
va(

" visually select *inside* a set of parentheses.  Try it by moving the cursor
" (somewhere in here) and trying it
vi(

" look up the word under the cursor in man
K