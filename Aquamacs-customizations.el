
;; for compatibility with older Aquamacs versions
 (defvar aquamacs-140-custom-file-upgraded t)
 (unless (fboundp 'auto-detect-longlines) (defun auto-detect-longlines () t))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 151 t)
 '(current-language-environment "UTF-8")
 '(default-frame-alist (quote ((menu-bar-lines . 1) (font . "fontset-monaco12") (foreground-color . "wheat") (background-color . "black") (cursor-type . box) (cursor-color . "Red") (vertical-scroll-bars . right) (tool-bar-lines . 1) (left-fringe . 1) (right-fringe) (fringe))))
 '(display-time-mode t)
 '(emulate-mac-finnish-keyboard-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-major-mode (lambda nil (funcall (quote text-mode)) (set-viper-state-in-major-mode)))
 '(menu-bar-mode t)
 '(one-buffer-one-frame-mode nil nil (aquamacs-frame-setup))
 '(special-display-function (quote special-display-popup-frame))
 '(swank-clojure-extra-vm-args (list "-server"))
 '(swank-clojure-jar-path "/Users/oranenj/opt/lisp/clojure/clojure.jar")
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
(add-to-list 'load-path "~/opt/lisp/elisp/magit")
(require 'magit)

(add-to-list 'load-path "~/opt/lisp/clojure-mode")
(require 'clojure-auto)

(add-to-list 'load-path "~/opt/lisp/slime")
(require 'slime)
(slime-setup)

(add-to-list 'load-path "~/opt/lisp/swank-clojure")
(require 'swank-clojure-autoload)

(setq ring-bell-function 'ignore)

(require 'viper)                   ; load Viper
(require 'vimpulse)                ; load Vimpulse
(require 'rect-mark)

(setq woman-use-own-frame nil)     ; don't create new frame for manpages
(setq woman-use-topic-at-point t)  ; don't prompt upon K key (manpage display)

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


