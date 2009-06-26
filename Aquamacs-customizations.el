;; for compatibility with older Aquamacs versions
 (defvar aquamacs-140-custom-file-upgraded t)
 (unless (fboundp 'auto-detect-longlines) (defun auto-detect-longlines () t))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 200 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(cua-mode nil nil (cua-base))
 '(default-frame-alist (quote ((cursor-type . box) (vertical-scroll-bars . right) (modeline . t) (viper-vi-state-cursor-color . "Red") (fringe) (viper-saved-cursor-color-in-replace-mode . "black") (background-mode . dark) (right-fringe . 12) (left-fringe . 4) (border-color . "black") (cursor-color . "Red") (mouse-color . "black") (background-color . "black") (foreground-color . "wheat") (font . "-apple-monaco-medium-r-normal--14-140-72-72-m-140-iso10646-1") (tool-bar-lines . 1) (menu-bar-lines . 1))))
 '(display-time-mode t)
 '(emulate-mac-finnish-keyboard-mode t)
 '(indent-tabs-mode nil)
 '(initial-major-mode (lambda nil (funcall (quote text-mode)) (set-viper-state-in-major-mode)))
 '(menu-bar-mode t)
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(special-display-function (quote special-display-popup-frame))
 '(swank-clojure-binary "/usr/local/bin/clj")
 '(tabbar-mode nil nil (tabbar))
 '(text-mode-hook nil)
 '(tool-bar-mode t))

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






