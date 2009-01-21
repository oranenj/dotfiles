
;; for compatibility with older Aquamacs versions
 (defvar aquamacs-140-custom-file-upgraded t)
 (unless (fboundp 'auto-detect-longlines) (defun auto-detect-longlines () t))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 162 t)
 '(current-language-environment "UTF-8")
 '(default-frame-alist (quote ((tool-bar-lines . 1) (cursor-type . box) (vertical-scroll-bars . right) (modeline . t) (viper-vi-state-cursor-color . "Red") (fringe) (viper-saved-cursor-color-in-replace-mode . "black") (background-mode . dark) (menu-bar-lines . 1) (right-fringe . 12) (left-fringe . 4) (border-color . "black") (cursor-color . "Red") (mouse-color . "black") (background-color . "black") (foreground-color . "wheat") (font . "-apple-monaco-medium-r-normal--14-140-72-72-m-140-iso10646-1"))))
 '(display-time-mode t)
 '(emulate-mac-finnish-keyboard-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-major-mode (lambda nil (funcall (quote text-mode)) (set-viper-state-in-major-mode)))
 '(menu-bar-mode t)
 '(special-display-function (quote special-display-popup-frame))
 '(swank-clojure-extra-vm-args (list "-server" "-Djava.security.manager" "-Djava.security.policy=file:///Users/oranenj/.emacs.policy"))
 '(swank-clojure-jar-path "/Users/oranenj/opt/lisp/clojure/clojure.jar")
 '(tabbar-mode nil nil (tabbar))
 '(text-mode-hook nil)
 '(tool-bar-mode t)
 '(transient-mark-mode t)
 '(viper-mode t)
 '(viper-shift-width 4))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :family "apple-monaco"))))
 '(clojure-mode-default ((t (:inherit autoface-default :slant normal :weight normal :height 140 :family "monaco"))) t)
 '(flyspell-duplicate ((t (:foreground "Gold3" :underline t :weight normal))))
 '(flyspell-incorrect ((t (:foreground "OrangeRed" :underline t :weight normal))))
 '(font-lock-comment-face ((t (:foreground "SteelBlue1"))))
 '(font-lock-function-name-face ((t (:foreground "gold"))))
 '(font-lock-keyword-face ((t (:foreground "springgreen"))))
 '(font-lock-type-face ((t (:foreground "PaleGreen"))))
 '(font-lock-variable-name-face ((t (:foreground "Coral"))))
 '(menu ((((type x-toolkit)) (:background "light slate gray" :foreground "wheat" :box (:line-width 2 :color "grey75" :style released-button)))))
 '(mode-line ((t (:foreground "black" :background "light slate gray"))))
 '(tool-bar ((((type x w32 mac) (class color)) (:background "midnight blue" :foreground "wheat" :box (:line-width 1 :style released-button))))))


(add-to-list 'load-path "~/opt/lisp/elisp")

(add-to-list 'load-path "~/opt/lisp/clojure-mode")
(require 'clojure-mode)

(add-to-list 'load-path "~/opt/lisp/slime")
(require 'slime)
(slime-setup)

(add-to-list 'load-path "~/opt/lisp/slime/contrib")
(require 'slime-repl)
(slime-repl-init)

(add-to-list 'load-path "~/opt/lisp/swank-clojure")
(require 'swank-clojure-autoload)

(setq ring-bell-function 'ignore)

(when (featurep 'aquamacs)         ; redundant I guess, but serves as documentation
    (raise-frame))                 ; HACK for viper
(require 'viper)                   ; load Viper
(require 'viper-in-more-modes)
(setq woman-use-own-frame nil)     ; don't create new frame for manpages
(setq woman-use-topic-at-point t)  ; don't prompt upon K key (manpage display)
(require 'vimpulse)                ; load Vimpulse
(require 'rect-mark)

(add-to-list 'load-path "~/opt/lisp/elisp/egg")
(require 'egg)
(require 'egg-grep)

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
; 
;(add-hook 'c-mode-hook          'my-tab-fix)
;(add-hook 'sh-mode-hook         'my-tab-fix)
;(add-hook 'emacs-lisp-mode-hook 'my-tab-fix)

(add-hook 'clojure-mode-hook    'my-tab-fix)
(add-hook 'clojure-mode-hook    'viper-mode)


