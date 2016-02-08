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

(global-set-key (kbd "C-c C-j") 'org-capture)

(mapc 'load '("org-sync" "org-sync-github"))
(require 'org-trello)

(setq org-agenda-files
      (append
       (file-expand-wildcards "~/Dropbox/notes/trello/*.org")
       (file-expand-wildcards "~/Dropbox/notes/slab/neatline-*.org")
       (list "~/Dropbox/notes/slab/planning-2016-01-14.org")))

(setq org-mobile-directory "~/Dropbox/org/")
(setq org-directory "~/Dropbox/notes/")
(setq org-mobile-inbox-for-pull "~/Dropbox/notes/inbox.org")
