(mapc '(lambda (setting) (set (car setting) (cadr setting)))
'((clojure-mode-use-backtracking-indent t)
 (clojure-src-root "/Users/oranenj/opt/lisp")
 (swank-clojure-extra-classpaths (list "/Users/oranen/.clojure/"))
 (swank-clojure-extra-vm-args (list "-server" "-Djava.security.manager" "-Djava.security.policy=file:///Users/oranenj/.emacs.policy"))
 (swank-clojure-jar-path "/Users/oranenj/opt/lisp/clojure/clojure.jar")

 (current-language-environment "UTF-8")
 (display-time-mode t)
 (indent-tabs-mode nil)
 (inhibit-startup-screen t)

 (viper-mode t)
 (viper-ex-style-editing nil)
 (viper-ex-style-motion nil)
 (viper-vi-style-in-minibuffer nil)
 (viper-shift-width 4)

 (viper-vi-state-mode-list (quote (fundamental-mode makefile-mode awk-mode m4-mode xrdb-mode winmgr-mode autoconf-mode cvs-edit-mode html-mode html-helper-mode emacs-lisp-mode lisp-mode lisp-interaction-mode jde-mode java-mode cc-mode c-mode c++-mode objc-mode fortran-mode f90-mode basic-mode bat-mode asm-mode prolog-mode flora-mode sql-mode text-mode indented-text-mode tex-mode latex-mode bibtex-mode ps-mode diff-mode idl-mode perl-mode cperl-mode javascript-mode tcl-mode python-mode sh-mode ksh-mode csh-mode gnus-article-mode mh-show-mode clojure-mode slime-repl-mode)))))


(add-to-list 'load-path "~/opt/lisp/elisp")
(require 'highlight-parentheses)

(add-to-list 'load-path "~/opt/lisp/clojure-mode")
(require 'clojure-mode)
(clojure-slime-config)

(setq ring-bell-function 'ignore)

; Hack for viper
(when (featurep 'aquamacs)
  (raise-frame))

(require 'viper)                   ; load Viper
(setq woman-use-own-frame nil)     ; don't create new frame for manpages
(setq woman-use-topic-at-point t)  ; don't prompt upon K key (manpage display)
(require 'vimpulse)                ; load Vimpulse
(require 'rect-mark)

(add-to-list 'load-path "~/opt/lisp/elisp/egg")
(require 'egg)
;(require 'egg-grep)

(defun indent-or-expand (arg)
  "Either indent according to mode, or expand the word preceding
point."
  (interactive "*P")
  (if (and
       (or (bobp) (= ?w (char-syntax (char-before))))
       (or (eobp) (not (= ?w (char-syntax (char-after))))))
      (slime-complete-symbol)
    (indent-according-to-mode)))

(defun my-tab-fix ()
  (local-set-key [tab] 'indent-or-expand))

(add-hook 'clojure-mode-hook 'my-tab-fix)
