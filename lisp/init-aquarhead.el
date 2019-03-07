;; AquarHEAD's extra configs :)

(eval-when-compile (require 'init-const))

;; 2 spaces indent by default
(setq-default c-basic-offset 2
              tab-width 2
              python-indent 2
              indent-tabs-mode nil)

;; Rust uses 4 spaces indent
(use-package rust-mode
  :config
  (setq rust-format-on-save t)
  (setq rust-indent-offset 4)
  )

;; Pollen for about-me
(use-package pollen-mode)

;; Nyaaaaaaaan!
(use-package nyan-mode
  :hook (after-init . nyan-mode)
  :init (setq nyan-animate-nyancat t))

;; Recent preference
(use-package base16-theme
  :config
  ;; fix for dashboard
  (set-face-attribute 'widget-button nil :underline nil))

(load-theme 'base16-nord t)

;; For sanity
(setq require-final-newline t)

;; Just because I'm used to these
(when sys/macp (global-set-key (kbd "M-s") 'save-buffer))

(use-package drag-stuff
  :config
  (define-key drag-stuff-mode-map (kbd "<M-left>") 'beginning-of-line-text)
  (define-key drag-stuff-mode-map (kbd "<M-right>") 'move-end-of-line))

(global-set-key (kbd "<A-left>") 'left-word)
(global-set-key (kbd "<A-right>") 'right-word)

;; Viva La Ligatures!
(when sys/macp (mac-auto-operator-composition-mode))

;; Org customization
(use-package org-bullets
  :custom
  (org-bullets-bullet-list '("" "" "" "" "" "" "" "" "" "")))

(setq-default org-startup-folded nil)

;; Better org-pomodoro
(use-package org-pomodoro
  :config
  (setq org-pomodoro-finished-sound "~/Music/Bastion-VOX-Sorry to Interrupt.m4r")
  (setq org-pomodoro-short-break-sound "~/Music/Bastion-VOX-Sorry to Interrupt.m4r")
  (setq org-pomodoro-long-break-sound "~/Music/Bastion-VOX-Sorry to Interrupt.m4r"))

;; Ninja build
(use-package ninja-mode)

(provide 'init-aquarhead)
