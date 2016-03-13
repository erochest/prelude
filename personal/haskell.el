;(require 'haskell-mode)
(require 'haskell-cabal)
(require 'flycheck-haskell)

;;;; Set-up from https://www.fpcomplete.com/user/commercial/content/ide-and-linters

(defun turn-on-subword-mode ()
  (interactive)
  (subword-mode 1))

(defun my-haskell-mode-hook ()
  (ghc-init)
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
  (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear))

(custom-set-variables
 '(haskell-mode-hook
   (quote
    (interactive-haskell-mode
     turn-on-haskell-indent
     turn-on-subword-mode
     turn-on-haskell-decl-scan
     my-haskell-mode-hook)))
 '(haskell-process-type 'stack-ghci))

(setq haskell-stylish-on-save t)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)

(add-to-list 'company-backends 'company-ghc)
