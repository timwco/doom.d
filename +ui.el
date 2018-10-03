;;;  -*- lexical-binding: t; -*-

;; Fonts
(setq doom-font (font-spec :family "Operator Mono" :size 18))
(setq doom-variable-font (font-spec :family "Operator Mono" :size 18))
(setq doom-unicode-font (font-spec :family "Operator Mono" :size 18))
(setq doom-big-font (font-spec :family "Operator Mono" :size 28))

;; Opens In Full Screen / Maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Opens in Distraction Free Mode
;; (add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

;; Setting Line Height
(defun set-bigger-spacing ()
  (setq-local default-text-properties '(line-spacing 0.25 line-height 1)))
(add-hook 'text-mode-hook 'set-bigger-spacing)
(add-hook 'prog-mode-hook 'set-bigger-spacing)