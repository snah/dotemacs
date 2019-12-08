
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(unless (package-installed-p 'use-package)
  (progn (package-refresh-contents)
	 (package-install 'use-package)))

(setq org-dotemacs-default-file "~/.emacs.d/dotemacs.org")
(setq local-dotemacs-file "~/.localemacs.d/dotemacs.org")

(use-package org-dotemacs
  :ensure t
  :config (org-dotemacs-load-file nil org-dotemacs-default-file))


