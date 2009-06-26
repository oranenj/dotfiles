(setq indent-tabs-mode nil); Aquamacs is idiotic


;; Miscellaneous
(add-to-list 'load-path "~/opt/lisp/elisp")
(autoload 'highlight-parentheses-mode "highlight-parentheses" t)


;; Git support
(add-to-list 'load-path "~/opt/lisp/elisp/egg")
(require 'egg)


;; Viper/Vimpulse setup
(setq cua-mode nil); CUA-mode breaks visual block mode
(setq viper-mode t)
(when (featurep 'aquamacs)
  (raise-frame))
(require 'viper)
(require 'vimpulse)
(load "~/opt/lisp/elisp/rm-autoload.el")

(add-to-list 'viper-vi-state-mode-list 'clojure-mode)


;; Clojure Slime Setup
(add-to-list 'load-path "~/opt/lisp/clojure-mode")
(autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

(setq clojure-src-root "~/opt/lisp/")
; For some reason, 'clojure-slime-config 
; doesn't like it if the following is not set:
(unless (boundp 'swank-clojure-extra-classpaths) 
  (setq swank-clojure-extra-classpaths '()))

(eval-after-load "clojure-mode"
  '(clojure-slime-config))

(add-hook 'clojure-mode-hook 'highlight-parentheses-mode)
