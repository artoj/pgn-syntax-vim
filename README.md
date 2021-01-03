# Portable Game Notation (PGN) syntax file for Vim
Portable Game Notation or PGN is a standard way to record chess games digitally.
The 'pgn.vim' file provides syntax coloring for PGN files in Vim.

## History
The syntax file is based on Charles Ford's work, originally published to
www.vim.org as script
[#677](https://www.vim.org/scripts/script.php?script_id=677), back in 2003. It
has since been moved to Github as early as 2009 by  Arto Josson, who along with
several other Github users made small improvements from 2009 to 2012. Atro's
[repository](https://github.com/artoj/pgn-syntax-vim) serves as the base for
this repo, although changes from the other contributors have been included.

Arto rewrote most of the syntax parsing, making it more strict and adding new
features such as support for comments and special characters in string
values.

## Specification
The PGN format specification can be found
[here](http://www.saremba.de/chessgml/standards/pgn/pgn-complete.htm).


## Installation

### Vim 8 Native Package Management
- Create a subfolder in `$VIMRUNTIME/pack/`, this directory may be called
  anything and is a quirk of how Vim8 does package management.
- Within your new directory, create a `start` subdirectory, so that you now have
  a new path: `$VIMRUNTIME/pack/<FOO>/start`
- Within start, clone this repository:
  ```sh
  git clone https://github.com/yuri-norwood/pgn-syntax-vim
  ```
- Or if you track your Vim plugin, add it
  as a submodule:
  ```sh
  git submodule add https://github.com/yuri-norwood/pgn-syntax-vim
  ```
  Just remember to add and commit your `.gitmodules` file in this case.

### Vundle
- Add `Bundle 'yuri-norwood/pgn-syntax-vim'` to your Vundle configuration.
- Run `:BundleInstall`

### Pathogen

### Manual
- Put [syntax/pgn.vim](syntax/pgn.vim) in your `$VIMRUNTIME/syntax/`
  directory.
- Run `:set syntax=pgn` to use the syntax in the current buffer.

To set the syntax automatically for certain file types, such as '.pgn' in this
case:
- Put [ftdetect/pgn.vim](ftdetect/pgn.vim) in $VIMRUNTIME/ftdetect/ directory.

See `:help ftdetect` for more information.

## Copy Rights
©2003      [Charles Ford](https://vim.org/profile.php?user_id=2607)
©2009-2012 [Arto Josson](https://github.com/artoj)
©2009      [Israel Chauaca Fuentes](https://github.com/Raimondi)
©2012      [Yves Stadler](https://github.com/mvy)
©2021      [Yuri Norwood](https://github.com/yuri-norwood)

## Licensing
This plugin has a long history, unfortunately, no concrete licensing terms have
been outlined since it's initial creation by Charles Ford back in '03. Since the
original version was uploaded to the official Vim site, it can be safely assumed
that the 1.1k downloads are covered by the implicit permission of use offered
when publishing a script on www.vim.org.

However, to make sure there is a clear distinction between implicitly and
explicitly licensed code, please note:
- Unless otherwise specified, all work is under the copyright, and is the
  property of, the respective authors.
- Where specified, any copyright notice within a file indicates the authorship
  of said copyright holder.
- Where no explicit copyright notice is available, the owner is implied to be
  the author listed in the commit history, and all copyrights and ownership is
  implied to be theirs.
- All files written, and modifications made, after the First of January 2021,
  12am UTC, are explicitly provided to the public domain.
- Should no original code nor structure remain of any files existing prior to
  01/01/21, said files shall also enter the public domain, within reason and
  good faith.

