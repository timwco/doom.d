;;;  -*- lexical-binding: t; -*-
(setq-default evil-shift-width 2 ;; I normally use 2wide for my projects.
              tab-width 2)

(setq user-mail-address "tim@timw.co"
      user-full-name "Tim Whitacre")

(def-package! prettier-js
  :commands (prettier-js-mode)
  :init
  (defun setup-prettier-js ()
    "Sets up arguments and the mode."
    (interactive)
    (setq prettier-js-args '("--single-quote"))

    (prettier-js-mode)))

(after! js2-mode
  (add-hook 'js2-mode-hook #'eslintd-fix-mode)
  (setq js2-basic-offset 2))


;; Modules
(load! "+ui")