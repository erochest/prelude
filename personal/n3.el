(setq auto-mode-alist
      (append
       (list
        '("\\.n3" . n3-mode)
        '("\\.owl" . n3-mode)
        '("\\.ttl" . n3-mode))
       auto-mode-alist))
