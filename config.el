(set-language-environment "UTF-8")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;; (set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(setq inhibit-compacting-font-caches t)

(defalias 'yes-or-no-p 'y-or-n-p)

(defun config-reload ()
  "Reloads ~/.emacs.d/config.org at runtime"
  (interactive)
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
(global-set-key (kbd "C-c r") 'config-reload)

(setq read-file-name-completion-ignore-case t)
(setq read-buffer-completion-ignore-case t)
(setq completion-ignore-case  t)

(defun initel-visit ()
  "Visita ~/.emacs.d/init.el"
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-c i") 'initel-visit)

(defun config-visit ()
  "Visita ~/.emacs.d/config.org"
  (interactive)
  (find-file "~/.emacs.d/config.org"))
(global-set-key (kbd "C-c v") 'config-visit)

(defun apuntes-visit ()
  "Visita los apuntes de sistema"
  (interactive)
  (find-file "D:/Users/curso mañana/Desktop/SISTEMAS/Apuntes.org"))
(global-set-key (kbd "C-c a") 'apuntes-visit)

(defun guardar-en-escritorio ()
  (interactive)
  (write-file "D:/Users/curso mañana/Desktop/"))
(global-set-key (kbd "C-c d") 'guardar-en-escritorio)

(defun guardar-en-programacion ()
  (interactive)
  (write-file "D:/Users/curso mañana/Desktop/PROG/"))
(global-set-key (kbd "C-c p") 'guardar-en-programacion)

(defun guardar-en-sistemas ()
  (interactive)
  (write-file "D:/Users/curso mañana/Desktop/SISTEMAS/"))
(global-set-key (kbd "C-c s") 'guardar-en-sistemas)

(defun guardar-en-fol ()
  (interactive)
  (write-file "D:/Users/curso mañana/Desktop/FOL/"))
(global-set-key (kbd "C-c f") 'guardar-en-fol)

(defun guardar-en-entornos ()
  (interactive)
  (write-file "D:/Users/curso mañana/Desktop/Entornos/"))
(global-set-key (kbd "C-c e") 'guardar-en-entornos)

(defun guardar-en-bbdd ()
  (interactive)
  (write-file "D:/Users/curso mañana/Desktop/BBDD/"))
(global-set-key (kbd "C-c b") 'guardar-en-bbdd)

(defun guardar-en-marcas ()
  (interactive)
  (write-file "D:/Users/curso mañana/Desktop/Marcas/"))
(global-set-key (kbd "C-c m") 'guardar-en-marcas)

(defun guardar-en-www ()
  (interactive)
  (write-file "C:/wamp64/www/ejex/"))
(global-set-key (kbd "C-c w") 'guardar-en-www)

(defun guardar-en-feliz-carpeta ()
  (interactive)
  (write-file "D:/FelizCarpeta/"))
(global-set-key (kbd "<f6> f") 'guardar-en-feliz-carpeta)

;; INHIBIR STARTUP
(setq inhibit-startup-message t)

;; UNDO
(global-set-key (kbd "C-z") 'undo)

;; DELETE-SELECION
(delete-selection-mode 1)

;; AUTOSAVE
(setq make-backup-files nil)
(setq auto-save-default nil)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq-default cursor-type 'bar)
(global-hl-line-mode +1)

(global-unset-key (kbd "<f4>"))
(global-unset-key (kbd "<f5>"))
(global-unset-key (kbd "<f6>"))
(global-unset-key (kbd "<f7>"))
(global-unset-key (kbd "<f8>"))
(global-unset-key (kbd "<f9>"))
(global-unset-key (kbd "<f12>"))

(add-to-list 'load-path "~/.emacs.d/paquetes/")

(load "vline")
(load "col-highlight")
(load "hl-line+")
(load "crosshairs")
;; (load "crosshairs")

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;;  (use-package boron-theme
;;  :ensure t)
;;    :init
;;      (load-theme 'boron t))
(use-package doom-themes
  :ensure t
  :init
  (load-theme 'doom-tomorrow-night t))

(use-package beacon
  :ensure t
  :config
    (beacon-mode 1)
    (setq beacon-blink-when-window-scrolls t))

(use-package rainbow-mode
  :ensure t
  :config
    (rainbow-mode 1))

(use-package rainbow-delimiters
  :ensure t
  :init
  (progn
    (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)))
(show-paren-mode 1)

(use-package aggressive-indent
  :ensure t
  :init
  (progn
(global-aggressive-indent-mode 1)))

(use-package indent-guide
  :ensure t
  :init
  (progn
    (unless 'html-mode
    (indent-guide-global-mode))
(setq indent-guide-recursive t)))

;; (setq telephone-line-lhs
;;       '((accent . (telephone-line-buffer-segment
;; 		   telephone-line-vc-segment
;; 		   telephone-line-erc-modified-channels-segment
;; 		   telephone-line-process-segment))
;; 	(nil    . (telephone-line-nyan-segment
;; 		   telephone-line-minor-mode-segment))))

;; (use-package telephone-line
;;   :ensure t
;;   :init
;;   (telephone-line-mode 1)

(use-package linum-relative
  :ensure t)
(global-set-key (kbd "<f6> r") 'linum-relative-mode)

(setq line-number-mode t)
(setq column-number-mode t)

(setq display-time-24hr-format t)
(setq display-time-format "   %Y-%m-%d    %H:%M   ")
(display-time-mode 1)
(setq display-time-default-load-average -1)

(use-package org-bullets
  :ensure t
  :init
  (setq org-bullets-face-name "Arial")
  (setq org-bullets-bullet-list '("◇" "➜" "▣" "➤" "▸"))
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; (use-package org-beautify-theme
;;   :ensure t)

;; (when window-system
;;       (use-package pretty-mode
;;       :ensure t
;;       :config
;;       (global-pretty-mode t)))

;; (use-package emojify
;;   :ensure t
;;   :init
;;   (global-emojify-mode t))
;; (global-set-key (kbd "<apps> e") 'emojify-insert-emoji)

(use-package es-windows
  :ensure t)
(global-set-key (kbd "<f7> <f7>") 'esw/move-window)

;; DEPENDENCIAS

(use-package nyan-mode
:ensure t)
(nyan-mode 0)
(nyan-start-animation)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(global-subword-mode 1)

(setq electric-pair-pairs '(
                           (?\{ . ?\})
                           (?\( . ?\))
                           (?\[ . ?\])
                           (?\" . ?\")
                           (?\¡ . ?\!)
                           (?\¿ . ?\?)
                           (?\` . ?\`)
                           ))
(electric-pair-mode t)

(setq scroll-conservatively 100)

(ido-mode t)

(use-package ido-yes-or-no
  :ensure t
  :init 
  (ido-yes-or-no-mode t))

;; (use-package ido-hacks
;;   :ensure t)
;; (ido-hacks-mode t)

;; (use-package ido-vertical-mode
;;   :ensure t)
;; (ido-vertical-mode t)

(use-package which-key
  :ensure t
  :config
    (which-key-mode))

(use-package kill-ring-search
  :ensure t
  :bind ("C-M-y" . kill-ring-search))

(global-set-key (kbd "C-x C-b") 'ibuffer)
(setq ibuffer-expert t)
(defun close-all-buffers ()
  "Cierra todos los buffers."
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
(global-set-key (kbd "C-M-x k") 'close-all-buffers)

(add-to-list 'org-structure-template-alist
	       '("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC"))

  (add-to-list 'org-structure-template-alist
  '("php" "#+BEGIN_SRC php\n<\?php\n?\n\377>\n#+END_SRC"))
;; 377

  (add-to-list 'org-structure-template-alist
	       '("js" "#+BEGIN_SRC javascript\n?\n#+END_SRC"))

  (add-to-list 'org-structure-template-alist
	       '("html" "#+BEGIN_SRC html\n?\n#+END_SRC"))

  (add-to-list 'org-structure-template-alist
	       '("css" "#+BEGIN_SRC css\n?\n#+END_SRC"))

  (add-to-list 'org-structure-template-alist
	       '("sql" "#+BEGIN_SRC sql\n?\n#+END_SRC")) 


  (global-set-key (kbd "<apps> o") 'org-mode)

  (setq org-hide-emphasis-markers t)

(use-package helm
  :ensure t				
  :init 
  (helm-mode t))

(use-package impatient-mode
:ensure t)

(global-set-key (kbd "<f6> 1") 'php-mode)
(global-set-key (kbd "<f6> 2") 'mhtml-mode)

(defun my-negative-zap (arg char)
  "Kill up to and including ARGth occurrence of CHAR.
Case is ignored if `case-fold-search' is non-nil in the current buffer.
Goes backward if ARG is negative; error if CHAR not found."
  (interactive (list (prefix-numeric-value current-prefix-arg)
		     (read-char "BackZap: " t)))
  ;; Avoid "obsolete" warnings for translation-table-for-input.
  (with-no-warnings
    (if (char-table-p translation-table-for-input)
	(setq char (or (aref translation-table-for-input char) char))))
  (kill-region (point) (progn
			 (search-forward (char-to-string char) nil nil -1)
			 (point))))

(global-set-key (kbd "C-M-z") 'my-negative-zap)

(defun lt-goto-delimiter-left (arg)
  "Go to the matching parenthesis if on parenthesis, otherwise insert %.
     vi style of % jumping to matching brace."
  (interactive "p")
  (cond ((or (looking-at "\\s\(")
	     (looking-at "\\s\[")
	     (looking-at "\\s\{")) (forward-list 1) (backward-char 1))

	((or (looking-at "\\s\)")
	     (looking-at "\\s\]")
	     (looking-at "\\s\}")) (forward-char 1) (backward-list 1))

	((backward-char 1))

	((or (looking-at "\\s\(")
	     (looking-at "\\s\[")
	     (looking-at "\\s\{")) (forward-list 1) (backward-char 1))

	((or (looking-at "\\s\)")
	     (looking-at "\\s\]")
	     (looking-at "\\s\}")) (forward-char 1) (backward-list 1))

	((forward-char 1))

	(t (self-insert-command (or arg 1)))))

(global-set-key (kbd "C-ç") 'lt-goto-delimiter-left)
(global-set-key [C-dead-grave] 'lt-goto-delimiter-left)

(defun move-line-down ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines 1))
    (forward-line)
    (move-to-column col)))

(defun move-line-up ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines -1))
    (move-to-column col))
  (previous-line 2))

(global-set-key (kbd "<C-S-down>") 'move-line-down)
(global-set-key (kbd "<C-S-up>") 'move-line-up)

(defun open-line-below ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))

(defun open-line-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)

(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

(defun delothwinim ()
  (interactive)
  (delete-other-windows)
  (move-beginning-of-line 1))
(global-set-key (kbd "C-x 1") 'delothwinim)

(use-package magit
  :ensure t
  :config
  (setq magit-push-always-verify nil)
  (setq git-commit-summary-max-length 50)
  :bind
  ("<apps> g" . magit-status))

(use-package pandoc-mode
  :ensure t)

(use-package evil
  :ensure t)

(use-package evil-tutor
  :ensure t)

(global-set-key (kbd "<apps> v") 'evil-mode)

(use-package treemacs
  :ensure t
  :defer t
  ;; :init
  ;; (with-eval-after-load 'winum
  ;;   (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-collapse-dirs              (if (executable-find "python") 3 0)
	  treemacs-deferred-git-apply-delay   0.5
	  treemacs-display-in-side-window     t
	  treemacs-file-event-delay           5000
	  treemacs-file-follow-delay          0.2
	  treemacs-follow-after-init          t
	  treemacs-follow-recenter-distance   0.1
	  treemacs-git-command-pipe           ""
	  treemacs-goto-tag-strategy          'refetch-index
	  treemacs-indentation                2
	  treemacs-indentation-string         " "
	  treemacs-is-never-other-window      nil
	  treemacs-max-git-entries            5000
	  treemacs-no-png-images              nil
	  treemacs-no-delete-other-windows    t
	  treemacs-project-follow-cleanup     nil
	  treemacs-persist-file               (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
	  treemacs-recenter-after-file-follow nil
	  treemacs-recenter-after-tag-follow  nil
	  treemacs-show-cursor                nil
	  treemacs-show-hidden-files          t
	  treemacs-silent-filewatch           nil
	  treemacs-silent-refresh             nil
	  treemacs-sorting                    'alphabetic-desc
	  treemacs-space-between-root-nodes   t
	  treemacs-tag-follow-cleanup         t
	  treemacs-tag-follow-delay           1.5
	  treemacs-width                      35)

    ;; The default width and height of the icons is 22 pixels. If you are
    ;; using a Hi-DPI display, uncomment this to double the icon size.
    ;;(treemacs-resize-icons 44)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode t)
    (pcase (cons (not (null (executable-find "git")))
		 (not (null (executable-find "python3"))))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  :bind
  (:map global-map
	("<f8> s"    . treemacs-select-window)
	("<f8> d"    . treemacs-delete-other-windows)
	("<f8> <f8>" . treemacs)
	("<f8> b"    . treemacs-bookmark)
	("<f8> f"    . treemacs-find-file)
	("<f8> t"    . treemacs-find-tag)))


(use-package treemacs-evil
  :after treemacs evil
  :ensure t)

(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t)

;; (use-package auto-complete 
;;   :ensure t
;;   :init
;;   (progn
;;     (ac-config-default)
;;     (global-auto-complete-mode t)))

;; ;; php
;; (use-package ac-php
;;   :ensure t)

;; (unless (package-installed-p 'ac-php )
;;   (package-refresh-contents)
;;   (package-install 'ac-php )
;;   )
;; (require 'cl)
;; (require 'php-mode)
;; (add-hook 'php-mode-hook '(lambda ()
;;                             (auto-complete-mode t)
;;                             (require 'ac-php)
;;                             (setq ac-sources  '(ac-source-php ) )
;;                             (yas-global-mode 1)

;;                             (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
;;                             (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
;;                             ))

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3))
(global-company-mode)

(use-package company-emoji
  :ensure t)
(add-to-list 'company-backends 'company-emoji)

(defun --set-emoji-font (frame)
  (set-fontset-font t 'symbol
		    (font-spec :family "Segoe UI Emoji") frame 'prepend))
(--set-emoji-font nil)

(use-package company-web
  :ensure t)

(add-to-list 'company-backends 'company-web-html)
;; (add-to-list 'company-backends 'company-web-jade)
;; (add-to-list 'company-backends 'company-web-slim)

;; (add-hook 'web-mode-hook
;; 	  (lambda ()
;;             (set (make-local-variable 'company-backends) '(company-web-html))
;;             (company-mode t)))

(use-package ac-html-csswatcher
  :ensure t)
(company-web-csswatcher-setup)

(use-package company-tern
  :ensure t)

(add-to-list 'company-backends 'company-tern)

(add-hook 'js2-mode-hook (lambda ()
			   (tern-mode)
			   (company-mode)))

;; Disable completion keybindings, as we use xref-js2 instead
(define-key tern-mode-keymap (kbd "M-.") nil)
(define-key tern-mode-keymap (kbd "M-,") nil)

	;; (add-hook 'web-mode (lambda ()
	;; 		      (tern-mode)
	;; 		      (company-mode)))

(use-package company-php
  :ensure t)

(add-hook 'php-mode-hook
	  '(lambda ()
	     (require 'company-php)
	     (company-mode t)
	     (add-to-list 'company-backends 'company-ac-php-backend )))

(use-package web-mode
  :ensure t)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
	("blade"  . "\\.blade\\.")))
;; HTML
(setq web-mode-markup-indent-offset 4)

;; CSS
(setq web-mode-css-indent-offset 6)

;; JavaScript, Java, PHP, Ruby, Go, VBScript, Python...
(setq web-mode-code-indent-offset 4)

;; Padding para <style>
(setq web-mode-style-padding 4)

;; Padding para <script>
(setq web-mode-script-padding 4)

;; Padding para multilinea		
(setq web-mode-block-padding 1)

(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-current-column-highlight t)

(setq web-mode-ac-sources-alist
      '(("css" . (ac-source-css-property))
	("html" . (ac-source-words-in-buffer ac-source-abbrev))
	("php" . (ac-source-php))))


(add-hook 'web-mode (lambda ()
		      ;; (tern-mode)  
		      (company-mode)))

;;(web-mode-hook)
(add-hook 'web-mode
	  (lambda ()
	    (add-to-list 'company-backends 'company-ac-php-backend 'company-web-html)
	    (company-mode t)))

(use-package js2-mode
  :ensure t)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

(use-package js2-refactor
  :ensure t)

(use-package xref-js2
  :ensure t)

(use-package ag
  :ensure t)

(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
			   (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

(define-key esc-map "." #'xref-find-definitions)

(add-to-list 'load-path "C:/Program Files/Adobe/Adobe Dreamweaver CC 2018/www/extensions/default/Essentials/js/node_modules/tern/emacs")
(autoload 'tern-mode "tern.el" nil t)
(autoload 'tern-mode "tern-auto-complete.el" nil t)

(use-package 2048-game
  :ensure t)
