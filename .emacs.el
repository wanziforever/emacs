(setq inhibit-startup-message t)
(add-to-list 'load-path "~/share/emacs/site-lisp/")
(setq exec-path (cons "/usr/local/bin" exec-path))

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(package-initialize)

;;(setq load-path (cons "/usr/local/bin" load-path))
;;(setq shell-file-name "ksh")

;;(setenv "SHELL" shell-file-name)

;;i think the view-mode is better than the read-only, mistake, but work well :)
(define-key ctl-x-map "\C-q" 'view-mode)

(setq default-major-mode 'text-mode)
(column-number-mode t)
(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))
(require 'web-mode)
(require 'typescript-mode)
(require 'rjsx-mode)

(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode)
            interpreter-mode-alist))

(use-package lsp-mode
  :hook ((python-mode . lsp))
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda () (require 'lsp-pyright) (lsp))))


(setq default-fill-column 60)
(setq make-backup-files nil)

(setq electric-pair-preserve-balance nil)

;;//////////////////////////////////////////////////////////
(put 'set-goal-column 'disabled nil)    ; enable column positioning
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default fill-column 68)           ; shrink auto-fill column a bit
;; set window title
(setq frame-title-format '("" "%b @ %f"))

(setq find-name-arg "-iname") ;; ignore find-name-dired case
(set-default 'case-fold-search t)
;;(setq ido-case-fold t)

;; set smooth scroll
(setq scroll-step 1 scroll-conservatively 10000)
;;//////////////////////////////////////////////////////////

;(autoload 'python-mode "python-mode" "Python editing mode." t)
;(autoload 'jedi:setup "jedi" nil t)

(require 'go-mode)
;;markdown mode installation
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)

(autoload 'gfm-mode "gfm-mode"
  "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


(define-key isearch-mode-map [backspace] 'isearch-delete-char)
;;(define-key isearch-mode-map (kbd "") 'isearch-delete-char)
(define-key isearch-mode-map (kbd "C-h") 'isearch-delete-char)

(setq frame-title-format "denny@%b")
(mouse-avoidance-mode 'animate)

;;tak effect when press C-k b
;;(ido-mode t)

(defun common-hook()
  (view-mode t)
  )

(add-hook 'find-file-hook 'common-hook)

(setq term-buffer-maximum-size 10000) ;; 保留 10000 行历史记录
(add-hook 'term-mode-hook
          (lambda ()
            (setq-local scroll-up-aggressively 0.01))) ;; 平滑滚动

;;(require 'linum)
;;(global-linum-mode)
;;(require 'linum-off)
;;(setq linum-format "%4d|")

;;from effective emacs
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)
(global-set-key (kbd "C-x C-w") 'kill-ring-save)
(global-set-key (kbd "C-x /") 'indent-region)
(global-set-key (kbd "C-c M-u") 'upcase-word)
(global-set-key (kbd "C-c M-d") 'downcase-word)
(global-set-key (kbd "C-c M-c") 'capitalize-word)
(global-set-key (kbd "C-_") 'undo)
(global-set-key (kbd "C-x SPC") 'set-mark-command)
(global-set-key (kbd "C-c f g") 'find-grep)

;; 绑定 multi-occur-in-matching-buffers 到 C-c o
(global-set-key (kbd "C-c o") 'multi-occur-in-matching-buffers)


;; tags find tag
(setq gtags-ignore-case t)
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
;;(ggtags-mode 1)
(global-set-key (kbd "C-c s g") 'ggtags-find-tag)
;;(global-set-key (kbd "C-c s f") 'gtags-find-file)

(require 'xref)
(defvar xref--marker-ring nil
  "Ring of markers for Xref-based navigation.")

(global-set-key (kbd "[1;3C") 'forward-word)
(global-set-key (kbd "[1;3D") 'backward-word)
(global-set-key (kbd "[4~") 'move-end-of-line)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key [?\C-x ?h] 'help-command)

(global-set-key (kbd "M-<SPC>") 'set-mark-command)
(global-set-key (kbd "C-x f") 'find-file-at-point)
(global-set-key (kbd "C-<down>") 'windmove-down)
(global-set-key (kbd "C-<up>") 'windmove-up)
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<left>") 'windmove-left)
(global-set-key (kbd "M-j") 'windmove-down)
(global-set-key (kbd "M-k") 'windmove-up)
(global-set-key (kbd "M-l") 'windmove-right)
(global-set-key (kbd "M-h") 'windmove-left)

(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-vertically)
(global-set-key (kbd "C-3") 'split-window-horizontally)
(global-set-key (kbd "C-0") 'delete-window)

(global-set-key (kbd "M-^")  'enlarge-window)
(global-set-key (kbd "M-)")  'enlarge-window-horizontally)
(global-set-key (kbd "M-(")  'shrink-window-horizontally)
(global-set-key (kbd "M-\\") 'indent-region)
(global-set-key (kbd "M-t") 'view-mode)

;;tramp
;;(require tramp)
(setq tramp-default-method "scp")
(fset 'yes-or-no-p 'y-or-n-p)
(setq ido-enable-tramp-completion nil)

(global-set-key (kbd "C-x c" ) 'calculator)

(global-set-key (kbd "C-M-p") 'hold-line-scroll-up)
(global-set-key (kbd "C-M-n") 'hold-line-scroll-down)
;; scroll functions                                                                                                                                   
(defun hold-line-scroll-up()
  "Scroll the page with the cursor in the same line"
  (interactive)
  (let ((next-screen-context-lines
         (count-lines
          (window-start) (window-end)
          )
         ))
    (scroll-up)
    ))

(defun hold-line-scroll-down()
  "Scroll the page with the cursor in the same line"
  (interactive)
  (let ((next-screen-context-lines
         (count-lines
          (window-start) (window-end)
          )
         ))
    (scroll-down)
    ))

(setq scroll-step 1
      scroll-margin 1
      scroll-conservatively 10000)

;;Use ALT + W key to copy one line, or actived mark region
(global-set-key (kbd "M-W") 'huangq-save-line-dwim)
(defun huangq-save-one-line (&optional arg)
  "save one line. If ARG, save one line from first non-white."
  (interactive "P")
  (save-excursion
    (if arg
        (progn
          (back-to-indentation)
          (kill-ring-save (point) (line-end-position)))
      (kill-ring-save (line-beginning-position) (line-end-position)))))
(defun huangq-kill-ring-save (&optional n)
  "If region is active, copy region. Otherwise, copy line."
  (interactive "p")
  (if (and mark-active transient-mark-mode)
      (kill-ring-save (region-beginning) (region-end))
    (if (> n 0)
        (kill-ring-save (line-beginning-position) (line-end-position n))
      (kill-ring-save (line-beginning-position n) (line-end-position)))))
(defun huangq-save-line-dwim (&optional arg)
  "If region is active, copy region.
If ARG is nil, copy line from first non-white.
If ARG is numeric, copy ARG lines.
If ARG is non-numeric, copy line from beginning of the current line."
  (interactive "P")
  (if (and mark-active transient-mark-mode)
      ;; mark-active, save region
      (kill-ring-save (region-beginning) (region-end))
    (if arg
        (if (numberp arg)
            ;; numeric arg, save ARG lines
            (huangq-kill-ring-save arg)
          ;; other ARG, save current line
          (huangq-save-one-line))
      ;; no ARG, save current line from first non-white
      (huangq-save-one-line t))))

(c-add-style "mycodingstyle"
             '((c-comment-only-line-offset . 0)

               (c-hanging-braces-alist . ((substatement-open before
                                                             after)))
               (c-offsets-alist . ((topmost-intro        . 0)
                                   (topmost-intro-cont   . 0)
                                   (substatement         . 3)
                                   (substatement-open    . 0)
                                   (statement-case-open  . 3)
                                   (statement-cont       . 3)
                                   (access-label         . -3)
                                   (inclass              . 2)
                                   (inline-open          . 3)
                                   (innamespace          . 0)
                                   ))))

;; c/c++ mode
(add-hook 'c-mode-common-hook
          '(lambda()
             (c-set-style "mycodingstyle")
             (setq tab-width 2)
             (setq indent-tabs-mode nil)
             (setq c-basic-offset tab-width)))

;;(defun set-offset (&optional arg)
;;  (interactive "P")
;;  (setq indent (read-from-minibuffer "offset: "))
;;  (setq c-basic-offset (string-to-number indent))
;;  (remove-hook 'c-mode-common-hook (lambda () (linux-c-mode 2)))
;;  (add-hook 'c-mode-common-hook (lambda () (linux-c-mode (string-to-number indent))))
;;  )


(setq x-select-enable-clipboard t)

;;give another key for kill whole line
(global-set-key (kbd "C-c k") 'kill-whole-line)

;;disable tag, and set one tab to 4 blank
(setq-default indent-tabs-mode nil)
;;(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(setq tab-stop-list nil)

;;(global-cwarn-mode 1)

(c-toggle-electric-state -1)

(global-set-key (kbd "<f12> c") 'calendar)

(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer-other-window)
;;buffer switching ----------------------------
;;better C-x b  (ido does the same for C-x C-f)
;;(iswitchb-mode t)
(icomplete-mode t)       ;;minibuffer compeltion/suggestions
(eval-when-compile
  (require 'cl))

(defun get-buffers-matching-mode (mode)
  "Returns a list of buffers where their major-mode is equal to MODE"
  (let ((buffer-mode-matches '()))
    (dolist (buf (buffer-list))
      (with-current-buffer buf
        (if (eq mode major-mode)
            (add-to-list 'buffer-mode-matches buf))))
    buffer-mode-matches))

(defun multi-occur-in-this-mode ()
  "Show all lines matching REGEXP in buffers with this major mode."
  (interactive)
  (multi-occur
   (get-buffers-matching-mode major-mode)
   (car (occur-read-primary-args))))

;; global key for `multi-occur-in-this-mode' - you should change this.
;;(global-set-key (kbd "C-<f2>") 'multi-occur-in-this-mode)

(defun huangq-save-word-at-point()
  (interactive)
  (save-excursion
    (let ((end (progn (unless (looking-back "\\>" 1) (forward-sexp 1)) (point)))
          (beg (progn (forward-sexp -1) (point))))
      (copy-region-as-kill beg end)
      (message (substring-no-properties (current-kill 0))))))
(global-set-key (kbd "C-c w") 'huangq-save-word-at-point)

(setq calendar-latitude 39.90)
(setq calendar-longitude 116.30)
(setq calendar-location-name "Beijing")
;;(setq mark-diary-entries-in-calendar t)

;;(add-hook 'c-mode-common-hook (lambda () (linux-c-mode 2)))
(add-hook 'java-mode-hook 'linux-java-mode)
(add-hook 'cperl-mode-hook 'linux-cperl-mode)
;(add-hook 'python-mode-hook 'linux-python-mode)
;(add-hook 'python-mode-hook 'jedi:setup)
;(setq jedi:complete-on-dot t)
(add-hook 'GNUmakefile-mode-hook 'GNUmakefile-mode)
;;(add-hook 'c-mode-hook 'hs-minor-mode)
;;(add-hook 'c++-mode-hook 'hs-minor-mode)
;;(autoload 'gtags-mode "gtags" "" t)
(require 'gtags)
;;(setq c-mode-hook
;;      '(lambda ()
;;         (setq indent-tabs-mode nil)
;;         (gtags-mode 1)))
(add-hook 'c-mode-hook
          (function (lambda () (setq indent-tabs-mode nil))))


(setq gtags-mode-hook
      '(lambda()
         (setq gtags-path-style 'relative)))

(require 'gtags)
(defun linux-c-mode (arg)
;;  (setq indent 2)
  ;(if arg
  ;    (setq indent arg))
  (define-key c-mode-map [return] 'newline-and-indent)
  (define-key c-mode-map (kbd "M-j") 'windmove-down)
  (define-key c++-mode-map (kbd "M-j") 'windmove-down)
  (define-key c++-mode-map [F9] 'compile)
  (interactive)
  ;;(c-set-style "K&R")
  (c-set-style "bsd")
  (c-toggle-auto-state)
  (c-toggle-hungry-state)
  (indent-tabs-mode nil)
  ;(setq c-basic-offset indent)
  (which-function-mode t)
  (c-toggle-auto-newline nil)
  (view-mode t)
  )

(which-function-mode 1)
;;;;(add-hook 'c-mode-common-hook 'hs-minor-mode)

;;(setq-default indent-tabs-mode nil)
;; Python Hook
(add-hook 'python-mode-hook
          (function (lambda ()
                      (setq indent-tabs-mode nil
                            tab-width 2))))


(defun GNUmakefile-mode()
  ;;(linum-mode t)
  (view-mode t)
  (define-key GNUmakefile-mode-map [return] 'newline-and-indent)
  (define-key GNUmakefile-mode-map "\C-m" 'newline-and-indent)
  )

(global-set-key "\C-m" 'reindent-then-newline-and-indent)

(require 'wcy-swbuff)
;; then you can use <C-tab> and <C-S-kp-tab> to switch buffer.
(global-set-key (kbd "C-M-w") 'wcy-switch-buffer-forward)
(global-set-key (kbd "M-z") 'wcy-switch-buffer-forward)
(global-set-key (kbd "C-M-d") 'wcy-switch-buffer-backward)
(global-set-key (kbd "M-c") 'wcy-switch-buffer-backward)
(global-set-key (kbd "C-<tab>") 'wcy-switch-buffer-forward)
(global-set-key (kbd "C-S-<tab>") 'wcy-switch-buffer-backward)
(setq wcy-switch-buffer-active-buffer-face  'highlight)
(setq wcy-switch-buffer-inactive-buffer-face  'secondary-selection )

(global-set-key (kbd "C-x h") 'beginning-of-defun)
(global-set-key (kbd "C-x e") 'end-of-defun)

;;(add-hook 'c-mode-common-hook 'highlight-changes-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(delete-selection-mode nil)
 '(display-time-mode t)
 '(ignored-local-variable-values '((c-offsets-alist . 2)))
 '(js-indent-level 2)
 '(mark-even-if-inactive t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(lsp-pyright consult clang-format markdown-mode 0xc doom-themes smart-mode-line 0blayout doom-modeline magit ggtags projectile find-file-in-project orderless vertico))
 '(scroll-bar-mode nil)
 '(show-paren-when-point-inside-paren t)
 '(tool-bar-mode nil)
 '(transient-mark-mode nil)
 '(truncate-partial-width-windows nil))


(defvar match-paren--idle-timer nil)
(defvar match-paren--delay 0.5)
(setq match-paren--idle-timer (run-with-idle-timer match-paren--delay t #'blink-matching-open))

(global-set-key (kbd "C-c i") #'consult-imenu)


;; The following lines are always needed. Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(setq org-agenda-files (list "~/org/work.org"  
                             "~/org/personal.org"))

(add-hook 'org-load-hook
          (lambda ()
            ;; Alternative key binding for putty. basically Meta is replaced with C-x, Ctrl is 
            ;; replaced with C-c
            (define-key org-mode-map (kbd "\C-x SPC") 'org-insert-heading-respect-content)
            ;; of course Alt+RET is used for insert heading without respect the content
            (define-key org-mode-map (kbd "\C-c SPC") 'org-insert-todo-heading-respect-content)
            (define-key org-mode-map (kbd "\C-x RET") 'org-insert-todo-heading)


            ;; for C-up/down/left/right
            (define-key org-mode-map [(control c) up] 'org-shiftup)
            (define-key org-mode-map [(control c) down] 'org-shiftdown)
            (define-key org-mode-map [(control c) left] 'org-shiftleft)
            (define-key org-mode-map [(control c) right] 'org-shiftright)
            ))

(add-hook 'org-mode-hook 'turn-on-font-lock)

(setq org-log-done 'time)

(setq org-todo-keywords '("TODO" "STARTED" "WAITING" "DONE"))

(add-hook 'c-mode-common-hook 
          (lambda ()
            ;;			(define-key c++-mode-map [(control c) t]  'imenu-tree-window-weight)
            (define-key c++-mode-map "." 'ggtags-find-definition)
            (define-key c++-mode-map ","  'my-gtags-pop-history)
            (define-key c++-mode-map (kbd "C-c s c") 'ggtags-find-reference)
            (define-key c++-mode-map (kbd "C-c s g") 'ggtags-find-tag-dwim)
            (define-key c++-mode-map (kbd "C-c s f") 'ggtags-find-file)
            (define-key c-mode-map "." 'ggtags-find-definition)
            (define-key c-mode-map ","  'my-gtags-pop-history)
            (define-key c-mode-map (kbd "C-c s c") 'ggtags-find-reference)
            (define-key c-mode-map (kbd "C-c s g") 'ggtags-find-tag-dwim)
            (define-key c-mode-map (kbd "C-c s f") 'ggtags-find-file)
            (define-key java-mode-map "." ''ggtags-find-definition)
            (define-key java-mode-map ","  'my-gtags-pop-history)
            (define-key java-mode-map (kbd "C-c s c") 'ggtags-find-reference)
            (define-key java-mode-map (kbd "C-c s g") 'ggtags-find-tag-dwim)
            (define-key java-mode-map (kbd "C-c s f") 'ggtags-find-file)
            ))

(define-key gtags-select-mode-map "\^?" 'scroll-down)
(define-key gtags-select-mode-map " " 'scroll-up)
(define-key gtags-select-mode-map "\C-b" 'scroll-down)
(define-key gtags-select-mode-map "\C-f" 'scroll-up)
(define-key gtags-select-mode-map "k" 'previous-line)
(define-key gtags-select-mode-map "j" 'next-line)
(define-key gtags-select-mode-map "p" 'previous-line)
(define-key gtags-select-mode-map "n" 'next-line)
(define-key gtags-select-mode-map "q" 'gtags-pop-stack)
(define-key gtags-select-mode-map "u" 'gtags-pop-stack)
(define-key gtags-select-mode-map "," 'gtags-pop-stack)
(define-key gtags-select-mode-map "," 'gtags-pop-stack)
(define-key gtags-select-mode-map "\C-t" 'gtags-pop-stack)
(define-key gtags-select-mode-map "\C-m" 'gtags-select-tag)
(define-key gtags-select-mode-map "\e." 'gtags-select-tag)

(defun my/python-mode-lsp-keybindings ()
  "为 python-mode 绑定常用 lsp 快捷键."
  (local-set-key (kbd "M-.") #'lsp-find-definition)     ;; 跳转到定义
  (local-set-key (kbd "M-?") #'lsp-find-references)     ;; 查找引用
  (local-set-key (kbd "C-c r") #'lsp-rename)            ;; 重命名符号
  (local-set-key (kbd "M-,") #'xref-pop-marker-stack))  ;; 返回上一个点

(add-hook 'python-mode-hook #'my/python-mode-lsp-keybindings)


(require 'man)
(define-key Man-mode-map "j" 'next-line)
(define-key Man-mode-map "k" 'previous-line)
(define-key Man-mode-map "v" 'View-scroll-page-backward)
(define-key Man-mode-map " " 'View-scroll-page-forward)
(define-key Man-mode-map "s" 'isearch-forward)
(define-key Man-mode-map "r" 'isearch-backward)
(define-key Man-mode-map "h" 'backward-char)
(define-key Man-mode-map "l" 'forward-char)

(define-key occur-mode-map "j" 'next-line)
(define-key occur-mode-map "k" 'previous-line)
(define-key occur-mode-map "v" 'View-scroll-page-backward)
(define-key occur-mode-map " " 'View-scroll-page-forward)
(define-key occur-mode-map "s" 'isearch-forward)
(define-key occur-mode-map "r" 'isearch-backward)

(require 'google-c-style)
;;(add-hook 'c-mode-common-hook 'google-set-c-style)

;;(setq cscope-do-not-update-database t)
;; Toggle window dedication

(defun toggle-window-dedicated ()
  "Toggle whether the current active window is dedicated or not"
  (interactive)
  (message 
   (if (let (window (get-buffer-window (current-buffer)))
         (set-window-dedicated-p window 
                                 (not (window-dedicated-p window))))
       "Window '%s' is dedicated"
     "Window '%s' is normal")
   (current-buffer)))

(global-set-key [pause] 'toggle-window-dedicated)
;;for non-window base terminal
(global-set-key (kbd "C-c d") 'toggle-window-dedicated)

;;(require 'my-deep-blue)
;;(my-deep-blue)

;(require 'doom-themes) ;; 加载 Doom Themes
;(load-theme 'doom-nord t)
;(load-theme 'doom-one t)
(load-theme 'doom-badger t)
;;(load-theme 'doom-monokai-pro t)
;;(load-theme 'doom-gruvbox t)
;;(load-theme 'doom-vibrant t)
;;(load-theme 'doom-molokai t)

;;(require 'my-light-blue)
;;(my-light-blue)


(server-start)

(require 'browse-kill-ring+)
(browse-kill-ring-default-keybindings)
(setq browse-kill-ring-maximum-display-length nil)
(setq browse-kill-ring-highlight-current-entry t)
(setq browse-kill-ring-separator "------------------------------------------------------------")
(setq browse-kill-ring-display-duplicates nil)
(add-hook 'browse-kill-ring-hook 'browse-kill-ring-my-keys)
(defun browse-kill-ring-my-keys ()
  (define-key browse-kill-ring-mode-map (kbd "RET") 'browse-kill-ring-insert-and-quit)
  (define-key browse-kill-ring-mode-map "<" 'beginning-of-buffer)
  (define-key browse-kill-ring-mode-map ">" 'end-of-buffer)
  (define-key browse-kill-ring-mode-map "j" 'next-line)
  (define-key browse-kill-ring-mode-map "k" 'previous-line)
  (define-key browse-kill-ring-mode-map "h" 'backward-char)
  (define-key browse-kill-ring-mode-map "l" 'forward-char)
  (define-key browse-kill-ring-mode-map (kbd "SPC") 'scroll-up)
  (define-key browse-kill-ring-mode-map (kbd "U") 'scroll-down)
  (define-key browse-kill-ring-mode-map "u" 'View-scroll-half-page-backward)
  (define-key browse-kill-ring-mode-map "o" 'other-window))



(defun isearch-query-replace-current ()
  "Replace current searching string."
  (interactive)
  (let ((case-fold-search isearch-case-fold-search)
        (from-string isearch-string))
    (if (string= from-string "")
        (isearch-update)
      (if (not isearch-success)
          (progn
            (message "Search string not found")
            (sleep-for 0.5)
            (isearch-update))
        (progn
          (isearch-done)
          (goto-char (min (point) isearch-other-end)))
        (perform-replace
         from-string
         (read-from-minibuffer (format "Query replace %s with: " from-string) "" nil nil query-replace-to-history-variable from-string t)
         t                                ; query flag
         isearch-regexp
         nil)))))

(setq-default case-fold-search t)

(defun toggle-case-fold-search-when-search ()
  "  toggle-case-fold-search-when-search `toggle-case-fold-search'."
  (interactive)
  (toggle-case-fold-search)
  (let ((str isearch-string))
    (goto-char isearch-opoint)
    (isearch-done)
    (let ((isearch-command
           (if isearch-forward
               (if isearch-regexp 'isearch-forward-regexp 'isearch-forward)
             (if isearch-regexp 'isearch-backward-regexp 'isearch-backward))))
      (call-interactively isearch-command))
    (isearch-yank-string str)))

;;(define-key  isearch-mode-map (kbd "M-i") 'isearch-query-replace-current-sb)
(define-key  isearch-mode-map (kbd "M-k") 'isearch-clean)
(define-key  isearch-mode-map (kbd "M-g") 'isearch-cancel)
(define-key  isearch-mode-map (kbd "M-u") 'isearch-toggle-word)
(define-key  isearch-mode-map (kbd "M-h") 'isearch-del-char)


(define-key java-mode-map (kbd "M-j") 'windmove-down)

(defun isearch-clean ()
  "Clean string in `iserch-mode'."
  (interactive)
  (goto-char isearch-opoint)
  (let ((isearch-command
         (if isearch-forward
             (if isearch-regexp 'isearch-forward-regexp 'isearch-forward)
           (if isearch-regexp 'isearch-backward-regexp 'isearch-backward))))
    (call-interactively isearch-command)))

;;for recent mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-saved-items 500)
(setq recentf-max-menu-items 60)
(global-set-key [C-x C-r] 'recentf-open-files)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(defun xsteve-ido-choose-from-recentf ()
  "Use ido to select a recently opened file from the `recentf-list'"
  (interactive)
  (let ((home (expand-file-name (getenv "HOME"))))
    (find-file
     (ido-completing-read "Recentf open: "
                          (mapcar (lambda (path)
                                    (replace-regexp-in-string home "~" path))
                                  recentf-list)
                          nil t))))

(require 'view)
(let ((list (list view-mode-map completion-list-mode-map
                  )))
  (require 'grep)
  (setq list (append list (list grep-mode-map)))
  (dolist (map list)
    (define-key map "h" 'backward-char)
    (define-key map "l" 'forward-char)
    (define-key map "j" 'next-line)
    (define-key map "k" 'previous-line)
    ;;(define-key map "s" 'consult-line)
    ;;(define-key map "J" 'scroll-down)
    ;;(define-key map "K" 'scroll-up)
    ;;(define-key map "J" 'goto-line)
    ;;(define-key map "K" 'ido-kill-buffer)
    (define-key map "J" 'hold-line-scroll-up)
    (define-key map "K" 'hold-line-scroll-down)
    (define-key map "b" 'backward-word)
    (define-key map "B" 'iswitchb-buffer)
    (define-key map "w" 'forward-word)
    (define-key map "y" 'copy-region-as-kill-nomark)
    (define-key map "c" 'copy-region-as-kill-nomark)
    (define-key map "o" 'other-window)
    (define-key map "G" 'end-of-buffer)
    (define-key map "a" 'move-beginning-of-line)
    (define-key map "e" 'move-end-of-line)
    (define-key map "m" 'recenter-top-bottom)
    (define-key map "z" 'hold-line-scroll-down)
    (define-key map "q" 'hold-line-scroll-up)
    (define-key map "v" 'View-scroll-page-backward)
    (define-key map "1" 'delete-other-windows)
    (define-key map "2" 'split-window-vertically)
    (define-key map "3" 'split-window-horizontally)
    (define-key map "0" 'delete-window)
    (define-key map "i" 'consult-imenu)
    ;;(define-key map "." 'ggtags-find-definition)
    ;;(define-key map ","  'my-gtags-pop-history)
    (define-key map (kbd "M-a") 'beginning-of-defun)
    (define-key map (kbd "M-e") 'end-of-defun)
    (define-key map (kbd "C-k") 'View-scroll-line-backward)
    (define-key map (kbd "M-f") 'forward-word)
    (define-key map (kbd "M-b") 'backward-word)
    (define-key map "f" 'forward-sexp)
    (define-key map "F" 'backward-sexp)
    ))

(setq ring-bell-function 'ignore)

;;use C-x w r to erase the highlight
(require 'highlight-symbol)
(global-set-key (kbd "C-c <f9>") 'highlight-symbol-at-point)
;;(global-set-key [f9] 'highlight-symbol-next)
;;(global-set-key [f10] 'highlight-symbol-prev)

(require 'uniquify)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight regular :height 120 :width normal))))
 '(isearch ((t (:background "yellow" :foreground "black"))))
 '(lazy-highlight ((t (:background "orange" :foreground "black")))))
  ; 其他匹配项


(require 'package)

;; If you want to use latest version
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; If you want to use last tagged version
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;;(package-initialize)

(add-to-list 'web-mode-ac-sources-alist
             '("html" . (ac-source-html-tag
                         ac-source-html-attr
                         ac-source-html-attrv)))


(electric-pair-mode t)

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(setq confirm-kill-emacs 'yes-or-no-p)
;;(global-display-line-numbers-mode t)

;; 安装并启用 Vertico
(use-package vertico
  :ensure t
  :init
  (vertico-mode 1))

;; 安装并启用 Orderless（模糊匹配）
(use-package orderless
  :ensure t
  :config
  (setq completion-styles '(orderless)))

;; 安装并启用 Marginalia（显示补全项附加信息）
;;(use-package marginalia
;;  :ensure t
;;  :init
;;  (marginalia-mode 1))

;;(use-package consult
;;  :ensure t
;;  :bind (("C-c c" . consult-line)))
;;
;;(defun consult-line-at-point ()
;;  "使用 `consult-line` 搜索光标下的单词。"
;;  (interactive)
;;  (let ((current-word (thing-at-point 'word t)))
;;    (consult-line current-word)))
;;(global-set-key (kbd "C-c l") 'consult-line-at-point)

;;(defun consult-line-symbol-at-point ()
;;  "Run `consult-line' with the symbol at point as the initial input."
;;  (interactive)
;;  (consult-line (thing-at-point 'symbol)))
;;
;;(global-set-key (kbd "C-s") 'consult-line-symbol-at-point)

(use-package projectile
  :ensure t
  :init
  (setq projectile-project-search-path '("~/code")) ;; 设置项目根目录
  (setq projectile-enable-caching t) ;; 启用缓存
  :bind-keymap
  ("C-c p" . projectile-command-map) ;; 将所有 Projectile 命令绑定到 C-c p
  :config
  (projectile-mode +1) ;; 启动 projectile-mode
  :hook (emacs-startup . projectile-discover-projects-in-search-path)) ;; 启动后自动扫描项目

(setq projectile-project-root-files '(".projectile"))

;;(use-package ggtags
;;  :ensure t
;;  :hook (prog-mode . ggtags-mode))

(use-package ggtags
  :ensure t
  :hook ((c-mode c++-mode objc-mode) . ggtags-mode))

;; 保存跳转位置
(advice-add 'ggtags-find-tag-dwim :before
            (lambda (&rest _args)
              (my-gtags-push-history)))

(advice-add 'ggtags-find-reference :before
            (lambda (&rest _args)
              (my-gtags-push-history)))

(advice-add 'ggtags-find-definition :before
            (lambda (&rest _)
              (my-gtags-push-history)))

(defvar my-gtags-jump-history nil "History of jump locations.")

(defun my-gtags-push-history ()
  "Save the current file and point to the jump history."
  (let ((file-path (or (buffer-file-name) (dired-get-file-for-visit)))  ;; 文件路径
        (position (point)))  ;; 光标位置
    (push (list file-path position) my-gtags-jump-history)))

(defun my-gtags-pop-history ()
  "Return to the last jump location."
  (interactive)
  (let ((entry (pop my-gtags-jump-history)))  ;; 获取并移除跳转历史的最后一条记录
    (when entry  ;; 如果历史记录不为空
      (let ((file-path (car entry))  ;; 获取文件路径
            (position (cadr entry)))  ;; 获取光标位置
        (find-file file-path)  ;; 打开文件
        (goto-char position)))))  ;; 跳转到光标位置

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;;(use-package smart-mode-line
;;  :ensure t)
;;(require 'smart-mode-line)
;;
;;;; Use a predefined theme (e.g., `dark`, `light`, or `respectful`)
;;(setq sml/theme 'dark)
;;
;;;; Initialize smart-mode-line
;;(sml/setup)
(use-package markdown-mode
  :ensure t
  :mode ("\\.md\\'" "\\.markdown\\'")
  :config
  (setq markdown-command "multimarkdown"))

;; used for vertico switch buffer highlight color issue
(set-face-attribute 'completions-common-part nil
                    :foreground "yellow"
                    :background "black")

(add-hook 'c-mode-common-hook
          (lambda ()
            (add-hook 'before-save-hook 'clang-format-buffer nil 'local)))

(use-package doom-themes
  :ensure t
  :config
  ;(load-theme 'doom-nord t)
  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

