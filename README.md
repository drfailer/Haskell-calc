haskell-calc
============

Parser library for arithmetic expression written in haskell.

Files
-----

- `Main.hs`: used to generate an exutable file made to be used in command line.
- `CalcPrompt.hs`: alow to use calc within [xmonad-prompt](https://hackage.haskell.org/package/xmonad-contrib-0.17.0/docs/XMonad-Prompt.html).


Todo
----

- [ ] rewrite all the parser for arithmetic expression
  - [ ] be sure to generate the right expression tree
  - [ ] try put all parsers in one big function instead of groupping by priority
