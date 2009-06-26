(if (featurep 'aquamacs)
  (setq custom-file "~/.emacs.d/custom.d/aquamacs.el")
  (setq custom-file "~/.emacs.d/custom.d/common.el"))

(load custom-file 'noerror)
(load "~/.emacs.d/init.el")
