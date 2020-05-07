# Vimrc Lite
A lighter version of my vim configuration with no external dependencies beyond installed plugins. See [my dotfiles repository](https://github.com/bhalash/dotfiles) more vim goodness.

My office work environment is based in Windows. The development environment is quite limited:

- [Git Bash](https://gitforwindows.org/), which is already quite slow.
- Plugin startup scripts like [vimtex.com](https://github.com/sheerun/vim-polyglot/blob/master/autoload/vimtex.vim) in [vim-polyglot](https://github.com/sheerun/vim-polyglot) add up to two seconds to start time.
- Tools like [ale](https://github.com/dense-analysis/ale) do not function correctly. The only thing they do is add to initialization time.

I value speed over robust features. The time I spent waiting for vim to open is time I would rather spend doing useful work.

These restrictions are good, because [restrictions breed creativity](https://en.wikipedia.org/wiki/Creative_limitation). Not being able to simply drop in yet another plugin forces me to learn more efficient ways to use vim to solve any given problem.

## License
Copyright 2015-2020 Mark Grealish. Licensed under the GPLv3 or later.

> This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public > License, version 3, as published by the Free Software Foundation.
>
> This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
>
> You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

A copy of the license is included in the project's root directory. The file is named [LICENSE](/LICENSE).

Modified [statusline.vim](/vim/autoload/statusline.vim) copyright 2020 [Emilia Simmons](https://github.com/milisims). Included under the MIT License by kind permission of the author.
