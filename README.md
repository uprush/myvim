# Make my Vim like Sublime

Install

```
curl https://raw.githubusercontent.com/uprush/myvim/master/setup.sh | sh
```

## The basics
[escape] : go back to normal mode (you know, this NOT so normal mode where nothing appears when you type)
[escape i] : enter insert mode, what you type is what appears on the screen
[escape v] : enter visual mode, you can visually select sections of code, both vertically and horizontally
[y] : “Yank”, aka “Copy”
[x] : eXterminate, delete current selection, weither it’s a line, a char or a block
[p] : wow, finally some command that makes sens : “Paste”



## Essentials
$ : get to the end of line
0 : get to start of line
dd : delete current line
yy : copy the whole current line
u : Undo last action
.: (dot), repeat last action
o : append a new line below and get into insert mode
O : same, but this time line is inserted above the current line
:e js/newfile.js : open a new file in js directory, and get ready to work on it



## Searching
Search for all files containing the word “users” anywhere in the app directory, recursively:

```
:vimgrep users app/ **
```

Search for all occurences of “users” in the current file :
```
/users
```

… ant then just press * go to the next occurence of “users”



## Some of the cool things you get with this config
[Control f] : Toggle the NERDTree file explorer on the left
[Control o] / [Control p] : Go one buffer (== tab on Atom) to the left / one buffer to the right
[Control s] : Save. Cause I don’t know about you, but spreading my fingers all across the keyboard for “Escape : w” always sounded weird to me
[Control q] : Quit. Close the tab you’re in (ok, buffer with this Vim config), without closing the whole Vim session
[Control k] : Toggle Komments. Comment/uncomment a line or a whole block

**Plus…**

* copy/paste uses sytem buffer by default, so you can copy/paste from your browser directly into Vim, and the reverse
* search results automatically open up in a new splited window
* Swap files are not created (note that this could be seen as a bad idea… personnaly, not a problem)
* Syntax highlighting for most common languages: Ruby, PHP, HTML, (S)CSS… and also HAML, Coffeescript, Pug (jade) and Vue
* Autocompletion (using Supertab)
* Auto closing quotes, brackets…
* Basic auto indent + landmarks for indentation levels
* You can still use the arrow keys
* The mouse is usable (though you may consider visual mode, most of the time)

