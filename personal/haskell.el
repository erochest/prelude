(require 'haskell-mode)
(require 'haskell-cabal)
; (require 'stack-mode)
; (require 'flycheck-haskell)

(setq haskell-stylish-on-save t)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
; (eval-after-load 'flycheck
;   '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

; (add-hook 'haskell-mode-hook 'stack-mode)
; (add-to-list 'company-backends 'company-ghc)
