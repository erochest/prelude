(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

(open-dribble-file
 (concat "~/.emacs.keylog/" (format-time-string "%Y-%m-%d-%d-%H-%M")))

;;;; Copied from http://lpaste.net/91637
;;;; See also http://chrisdone.com/posts/emacs-key-analysis
; (defvar *echo-keys-last* nil "Last command processed by `echo-keys'.")
;
; (defun echo-keys ()
;   (interactive)
;   (let ((deactivate-mark deactivate-mark))
;     (when (this-command-keys)
;       (let ((major-mode-name major-mode)
;             (tt (format-time-string "%s" (current-time))))
;         (with-current-buffer (get-buffer-create "keys.log")
;           (goto-char (point-max))
;           ;; self  self
;           ;; self  other \n
;           ;; other self  \n
;           ;; other other \n
;           ;; (unless (and (eq 'self-insert-command *echo-keys-last*)
;           ;;              (eq 'self-insert-command this-command))
;           ;;   (insert "\n"))
;           (if (eql this-command 'self-insert-command)
;               (let ((desc (key-description (this-command-keys))))
;                 (if (= 1 (length desc))
;                     (insert (format "\n%s %S " tt major-mode-name) desc)
;                   (insert (format "\n%s %S " tt major-mode-name) " " desc " ")))
;             (insert (format "\n%s %S " tt major-mode-name) (key-description (this-command-keys))))
;           (setf *echo-keys-last* this-command))))))
;
; (defun toggle-echo-keys ()
;   (interactive)
;   (if (member 'echo-keys  pre-command-hook)
;       (progn
;         (remove-hook 'pre-command-hook 'echo-keys)
;         (dolist (window (window-list))
;           (when (eq (window-buffer window) (get-buffer "*echo-key*"))
;             (delete-window window))))
;     (progn
;       (add-hook    'pre-command-hook 'echo-keys)
;       (delete-other-windows)
;       (split-window nil (- (window-width) 32) t)
;       (other-window 1)
;       (switch-to-buffer (get-buffer-create "*echo-key*"))
;       (set-window-dedicated-p (selected-window) t)
;       (other-window 1))))
