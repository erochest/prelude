(autoload 'n3-mode "n3-mode" "Major mode for OWL or N3 files" t)
(setq auto-mode-alist
      (append
       (list
        '("\\.n3" . n3-mode)
        '("\\.owl" . n3-mode)
        '("\\.ttl" . n3-mode))
       auto-mode-alist))
