# vim agda-mode input plugin

This is stolen entirely from the excellent NeoVim ⇔ Agda plugin
[cornelis](https://github.com/isovector/cornelis).

### About

A simple plugin to type Agda-style math symbols in NeoVim.


### Installation

Install this plugin using your favourite approach.

There are only two configuration options:

```vim
" To disable any mapping at all on startup.
let g:agda_input_no_agda_input=1

" If unset, defaults to your <localleader>
let g:agda_input_prefix="<tab>"
```

If you want to define other binds, you can do so as follows:

```vim
" Define a custom shortcut ...
call agda_input#bind_input("st", "≡⟨⟩")
```

> [!NOTE]
>
> If you're using this in combination with Cornelis, you'll want to disable
> Cornelis taking over the agda input with `let g:cornelis_no_agda_input=1`.


### Usage

In insert mode simply start typing, say, `<localleader>nat` and you will see a
lovely ℕ symbol appear!

Note that it is not specialised to any particular filetype; it is always
available.
