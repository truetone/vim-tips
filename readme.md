# Vim tips

## Resize splits

```vim
<Ctrl-w> - – decrease the height of the current split by one line
<Ctrl-w> + – increase the height of the current split by one line
<Ctrl-w> > – increase the width of the current split by one line
<Ctrl-w> < – decrease the width of the current split by one line
```

When all else fails, you can resize all split to be sensibly equal in size using C-w=. This last nugget was covered in our tip Equalize your splits. Checkout the video below. In it, I demonstrate the following:

```vim
5 <Ctrl-w> > – Makes left split 5 columns wider
10 <Ctrl-w> < – Makes left split 10 columns narrower
<Ctrl-w> J – Switch orientation of splits
5 <Ctrl-w> - - Make bottom split 5 rows shorter
10 <Ctrl-w> + - Make bottom split 10 rows taller
<Ctrl-w> = - Equalize splits again
```

## Save the current file as root (in case you opened it up without sudo accidentally and made changes to it)
```vim
:w !sudo tee %
```

## If you have a file that you can't save because its directory doesn't exist, how can you create that directory from the path component of the file?
```vim
:!mkdir -p %:h
```

## Turn camelCase into snake_case
```vim
:s/\v([a-z])([A-Z])/\1_\L\2/g
```

## Turn camelCase into snake_case (in only the visually selected part of the line)
```vim
:s/\%V\v([a-z])([A-Z])/\1_\L\2/g
```

## Turn snake_case into camelCase
```vim
:s/\v_([a-z])/\u\1/g
```

## Turn snake_case into camelCase (in only the visually selected part of line)
```vim
:s/\%V\v_([a-z])/\u\1/g
```

## Execute the contents of the current line in the current file in sh
```vim
:.,. w !sh
```

## Run the visually selected lines in the shell (not run as a filter)
```vim
:w !sh
```

## Show the contents of all registers
```vim
:reg<enter>
```

## Show the contents of register a
```vim
:reg a<enter>
```

## Go to the top of the screen
```vim
H
```

## Go to the line that is 20 lines below the line that is currently the top of the window
```vim
20H
```

## Go to the middle of the window
```vim
M
```

## Go to the bottom of the window
```vim
L
```

## Go to the tenth line from the bottom of the window
```vim
10L
```

## Go to the line that is 20% of the way down in the file
```vim
20%
```

## Scroll current line to top of page
```vim
zt
```

## Move current line to middle of page
```vim
zz
```

## Scroll current line to bottom of page
```vim
zb
```

## Scroll one character to the right
```vim
zh
```

## Scroll one character to the left
```vim
zl
```

## Scroll half a screen to the right
```vim
zH
```

## Scroll half a screen to the left
```vim
zL
```

## Enter replace mode to repeatedly replace the character under the cursor
```vim
R
```

## Make the selected text lower case
```vim
gu
```

## Make the selected text upper case
```vim
gU
```

## Lower case the whole line
```vim
guu
```

## Upper case the whole line
```vim
gUU
```

## Uppercase or lowercase the character under the cursor
```vim
~
```

I## Remove all those nasty ^M characters from the end of each line in a file
```vim
:%s/\r//g
```

## Autoindent lines already selected in visual mode
```vim
=
```

## Autoindent current line
```vim
==
```

## Format the current paragraph
```vim
gqap
```

## List your movements
```vim
:jumps
```

## List your recent commands
```vim
:history
```

## Display hex and ASCII value of character under cursor
```vim
ga
```

## Display hex value of utf-8 character under cursor
```vim
g8
```

## Jumps to last modified line
```vim
'.
```

## Jumps to exact position of last modification
```vim
`.
```

## Show what is currently mapped to <f6>
```vim
:map <f6>
```

## Show all the mappings
```vim
:map
```

## Fold: open a fold at the cursor
```vim
zo
```

## Fold: decrease the fold level by one
```vim
zr
```

## Fold: moves the cursor to the next fold
```vim
zj
```

## Fold: moves the cursor to the previous fold
```vim
zk
```

## Fold: move to start of current open fold
```vim
[z
```

## Fold: Move to end of current open fold
```vim
]z
```

## Fold: increase the fold level by one
```vim
zm
```

## Fold: decrease the fold level by one
```vim
zr
```

## In visual mode, select a whole word
```vim
aw
```

## In visual mode, select a whole sentence
```vim
as
```

Paste below the current line, adjusting indentation to match current line
```vim
]p
```

## Paste register above current line, leaving cursor after new text
```vim
gP
```

## Paste register below current line, leaving cursor after new text
```vim
gp
```

## Paste above the current line, adjusting indentation to match current line
```vim
[p
```

## Back a paragraph
```vim
{
```

## Forward a paragraph
```vim
}
```

## Back a sentence
```vim
(
```

## Forward a sentence
```vim
)
```

## Find matching parenthesis
```vim
%
```

## Same as :wq
```vim
ZZ
```

## Show lines containing the word under the cursor
```vim
[I
```

## Visually select *around* a set of parentheses.  Try it by moving the cursor (somewhere in here) and trying it
```vim
va(
```

## Visually select *inside* a set of parentheses.  Try it by moving the cursor (somewhere in here) and trying it
```vim
vi(
```

## Look up the word under the cursor in man
```vim
K
```
