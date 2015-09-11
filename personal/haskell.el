(require 'haskell-mode)
(require 'haskell-cabal)

(setq haskell-stylish-on-save t)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
