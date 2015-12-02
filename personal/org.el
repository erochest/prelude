(setq org-capture-templates
      '(("j" "Journal entry" plain
         (file+datetree+prompt "~/Dropbox/notes/journal.org")
         "%K - %a\n%i\n%?\n")))
