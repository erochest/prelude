(setq org-capture-templates
      '(("j" "Journal entry" entry
         (file+datetree+prompt "~/Dropbox/notes/journal.org")
         "* %T\n%?\n%K - %a\n%i\n")
        ("t" "Time log" plain
         (file+datetree+prompt "~/Dropbox/notes/timelog.org")

         )
        ))

(global-set-key (kbd "C-c C-j") 'org-capture)

(mapc 'load '("org-sync" "org-sync-github"))
(require 'org-trello)
