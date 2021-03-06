;; A customized .emacs file for Linux and macOS, with `el-get`
;; (https://github.com/dimitri/el-get) for package management.

(setq mouse-yank-at-point t)

;; Keybinding to refresh buffer. http://emacs.stackexchange.com/a/172
(global-set-key (kbd "C-c r") (lambda ()
                                (interactive)
                                (revert-buffer t t t)
                                (message "Refreshed buffer")))

;; https://www.emacswiki.org/emacs/ReformatBuffer
(defun indent-buffer ()
  "Reformat buffer."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "C-c f") 'indent-buffer)

;; http://stackoverflow.com/a/3669681
(defun show-file-name ()
  "Show the full filepath in the minibuffer."
  (interactive)
  (message (buffer-file-name)))

;; Set custom scratch message. https://stackoverflow.com/a/1498292/1563298
(setq initial-scratch-message ";;\n;; Scratch\n;;\n\n")

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; Interactively do things.
(require 'ido)
(ido-mode t)

;; Setup for el-get; see https://github.com/dimitri/el-get.
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; Make meta = command key instead of option key on Mac OS X.
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Allow shell-mode prompt color. https://stackoverflow.com/a/25826132
(set-face-attribute 'comint-highlight-prompt nil
                    :inherit nil)

;; https://stackoverflow.com/a/3685541
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil)
	    (setq tab-width 4)
	    (setq python-indent 4)))

(add-hook 'java-mode-hook
	  (lambda ()	
	    (setq c-basic-offset 2
		  tab-width 2
		  indent-tabs-mode nil)))

;; Use octave-mode for MATLAB.
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode)
	    auto-mode-alist))

;; Use shell-script-mode for Dakota input files.
(setq auto-mode-alist
      (cons '("\\.in$" . shell-script-mode)
	    auto-mode-alist))

;; Use json-mode for Jupyter Notebooks.
(setq auto-mode-alist
      (cons '("\\.ipynb$" . json-mode)
	    auto-mode-alist))

;; Use java-mode for SIDL files.
(setq auto-mode-alist
      (cons '("\\.sidl$" . java-mode)
	    auto-mode-alist))

;---------------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(require-final-newline t)
 '(blink-cursor-mode nil)
 '(diff-switches "-u")
 '(column-number-mode t)
 '(html-mode-hook nil)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t)))
 '(font-lock-builtin-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-comment-face ((t (:foreground "SteelBlue3"))))
 '(font-lock-constant-face ((t (:foreground "Aquamarine"))))
 '(font-lock-function-name-face ((t (:foreground "LightSkyBlue"))))
 '(font-lock-keyword-face ((t (:foreground "brown2"))))
 '(font-lock-string-face ((t (:foreground "burlywood1"))))
 '(font-lock-type-face ((t (:foreground "PaleGreen"))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
 '(isearch ((t (:background "magenta3" :foreground "brown4"))))
 '(link ((t (:foreground "LightBlue3" :underline t))))
 '(link-visited ((t (:inherit link :foreground "violet"))))
 '(minibuffer-prompt ((t (:foreground "cyan"))))
 '(region ((t (:background "color-20")))))
