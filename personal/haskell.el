(require 'haskell-mode)
(require 'haskell-cabal)
(require 'flycheck-haskell)

(setq haskell-stylish-on-save t)


(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

; (add-to-list 'company-backends 'company-ghc)

;; for structured-haskell-mode
; (require 'shm)
; (add-hook 'haskell-mode-hook 'structured-haskell-mode)

; (set-face-background 'shm-current-face "#eee8d5")
; (set-face-background 'shm-quarantine-face "lemonchiffon")
