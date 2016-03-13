(setq org-modules (append
                   (list 'org-habit)
                   org-modules))
(setq org-capture-templates
      '(("j" "Journal entry" entry
         (file+datetree+prompt "~/Dropbox/notes/journal.org")
         "* %T\n%?\n%K - %a\n%i\n")
        ("t" "Time log" plain
         (file+datetree+prompt "~/Dropbox/notes/timelog.org")
         )
        ("w" "Writing Idea" entry
         (file+datetree "~/Dropbox/notes/writing-ideas.org")
         "* %T\n%?")
        ))

(global-set-key (kbd "C-c c") 'org-capture)

(mapc 'load '("org-sync" "org-sync-github"))
; (require 'org-trello)

(setq org-agenda-files
      (append
       (file-expand-wildcards "~/Dropbox/notes/agenda/*.org")))

(setq org-mobile-directory "~/Dropbox/org/")
(setq org-directory "~/Dropbox/notes/")
(setq org-mobile-inbox-for-pull "~/Dropbox/notes/inbox.org")
