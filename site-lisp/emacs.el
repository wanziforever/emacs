(setq inhibit-startup-message t)
(add-to-list 'load-path "~/share/emacs/site-lisp/")
;;(setq shell-file-name "ksh")

;;(setenv "SHELL" shell-file-name)

;;i think the view-mode is better than the read-only, mistake, but work well :)
(define-key ctl-x-map "\C-q" 'view-mode)

;;(when window-system
;;(set-face-font 'default "-outline-Consolata-normal-r-normal-normal-15-112-96-96-c-*-iso8859-1")
;;  (set-face-font 'default "-unknown-Inconsolata-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1"))
  ;;(set-face-font 'default "-unknown-anonymous-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1"))
  ;;(set-face-font 'default "-unknown-dejavu sans mono-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1"))
;;(set-face-font 'default "-outline-YaHei Consolas Hybrid-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1"))

(setq default-major-mode 'text-mode)
(column-number-mode t)
(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))
(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode)
            interpreter-mode-alist))

(setq default-fill-column 60)

(autoload 'python-mode "python-mode" "Python editing mode." t)

(define-key isearch-mode-map [backspace] 'isearch-delete-char)
;;(define-key isearch-mode-map (kbd "") 'isearch-delete-char)
(define-key isearch-mode-map (kbd "C-h") 'isearch-delete-char)

(setq frame-title-format "denny@%b")
(mouse-avoidance-mode 'animate)

;;tak effect when press C-k b
(ido-mode t)

(global-linum-mode 1)
(require 'linum-off)

(defun common-hook()
  (view-mode t)
  )

(add-hook 'find-file-hook 'common-hook)

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

(global-set-key (kbd "[1;3C") 'forward-word)
(global-set-key (kbd "[1;3D") 'backward-word)
(global-set-key (kbd "[4~") 'move-end-of-line)
;;(global-set-key (kbd "") 'delete-backward-char)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key [?\C-x ?h] 'help-command)
;; overrides mark-whole-buffer`

;;(global-set-key [(return)] 'newline-and-indent)

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

;;;; all the following set key can be ignored, please go to edit the share/emacs/23.1/lisp/term/xterm.el for any special key
;;;;for windows TTY .example PUTTY
;;(global-set-key "[\B" 'windmove-down)
;;(global-set-key "[A" 'windmove-up)
;;(global-set-key "[C" 'windmove-right)
;;(global-set-key "[D" 'windmove-left)
;;;;
;;;;for solaris TTY like xterm under vnc
;;;;also can use C-M-v or C-M-S-v 
;;(global-set-key "[1;5B" 'windmove-down)
;;(global-set-key "[1;5A" 'windmove-up)
;;(global-set-key "[1;5C" 'windmove-right)
;;(global-set-key "[1;5D" 'windmove-left)
;;(global-set-key "[6;3~" 'scroll-other-window)
;;(global-set-key "[5;3~" 'scroll-other-window-down)
;;
;;(global-set-key "OB" 'windmove-down)
;;(global-set-key "OA" 'windmove-up)
;;(global-set-key "OD" 'windmove-left)
;;(global-set-key "OC" 'windmove-right)
;;(global-set-key (kbd "M-g")  'goto-line)
;;;;used for EMACS 23
(define-key input-decode-map "[B" 'windmove-down)
(define-key input-decode-map "[A" 'windmove-up)
(define-key input-decode-map "[D" 'windmove-left)
(define-key input-decode-map "[C" 'windmove-right)

(global-set-key (kbd "M-^")  'enlarge-window)
(global-set-key (kbd "M-)")  'enlarge-window-horizontally)
(global-set-key (kbd "M-(")  'shrink-window-horizontally)
(global-set-key (kbd "M-\\") 'indent-region)
(global-set-key (kbd "M-t") 'toggle-read-only)

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

;;(setq semanticdb-project-roots (list "/home/denny/code/radius_tool/src"))

(defadvice show-paren-function (after show-matching-paren-offscreen
                                      activate)
  "If the matching paren is offscreen, show the matching line in the
echo area. Has no effect if the character before point is not of
the syntax class ')'."
  (interactive)
  (let ((matching-text nil))
    ;; Only call `blink-matching-open' if the character before point
    ;; is a close parentheses type character. Otherwise, there's not
    ;; really any point, and `blink-matching-open' would just echo
    ;; "Mismatched parentheses", which gets really annoying.
    (if (char-equal (char-syntax (char-before (point))) ?\))
        (setq matching-text (blink-matching-open)))
    (if (not (null matching-text))
        (message matching-text))))


(setq scroll-step 1
      scroll-margin 1
      scroll-conservatively 10000)

;;(setq track-eol t)

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


(setq x-select-enable-clipboard t)

;;give another key for kill whole line
(global-set-key (kbd "C-c k") 'kill-whole-line)

;;disable tag, and set one tab to 4 blank
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)
(setq tab-stop-list nil)
;;
(setq indent-tabs-mode nil)
(setq default-tab-width 2)
(setq tab-width 2)
;;
(global-set-key (kbd "<f12> c") 'calendar)
;;(global-set-key (kbd "<f5>") 'kill-buffer-and-window)

(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(defun huangq-save-word-at-point()
  (interactive)
  (save-excursion
    (let ((end (progn (unless (looking-back "\\>" 1) (forward-sexp 1)) (point)))
          (beg (progn (forward-sexp -1) (point))))
      (copy-region-as-kill beg end)
      (message (substring-no-properties (current-kill 0))))))
(global-set-key (kbd "C-c w") 'huangq-save-word-at-point)


;;(require 'xcscope)
;;(setq cscope-do-not-update-database t)

;;(setq-default make-backup-files nil)

(setq calendar-latitude 39.90)
(setq calendar-longitude 116.30)
(setq calendar-location-name "Beijing")
;;(setq mark-diary-entries-in-calendar t)

(add-hook 'c-mode-hook 'linux-c-mode)
(add-hook 'c++-mode-hook 'linux-cpp-mode)
(add-hook 'c-mode-common-hook 'linux-cpp-mode)
(add-hook 'java-mode-hook 'linux-java-mode)
(add-hook 'cperl-mode-hook 'linux-cperl-mode)
(add-hook 'python-mode-hook 'linux-python-mode)
(add-hook 'GNUmakefile-mode-hook 'GNUmakefile-mode)
;;(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
;;(autoload 'gtags-mode "gtags" "" t)
(require 'gtags)
(setq c-mode-hook
      '(lambda ()
         (gtags-mode 1)))

(setq gtags-mode-hook
      '(lambda()
         (setq gtags-path-style¡¯relative)))

(require 'gtags)
(defun linux-c-mode()
  (define-key c-mode-map [return] 'newline-and-indent)
  (define-key c-mode-map (kbd "M-j") 'windmove-down)
  (define-key c++-mode-map [F9] 'compile)
  (interactive)
  (c-set-style "K&R")
  (c-toggle-auto-state)
  (c-toggle-hungry-state)
  (setq c-basic-offset 2)
  (which-function-mode t)
  (c-toggle-auto-newline nil)
  (view-mode t)
  )


(add-hook 'c-mode-common-hook 'hs-minor-mode)

(defun linux-cpp-mode()
  (define-key c++-mode-map [return] 'newline-and-indent)
  (define-key c++-mode-map (kbd "M-j") 'windmove-down)
  (define-key c++-mode-map [F9] 'compile)
  (interactive)
  (c-set-style "K&R")
  (c-toggle-auto-state)
  (c-toggle-hungry-state)
  (setq c-basic-offset 2)
  (which-function-mode t)
  (c-toggle-auto-newline nil)
  (linum-mode t)
  (view-mode t)
  )

(defun linux-java-mode()
  (interactive)
  (which-function-mode t)
  (linum-mode t)
  (view-mode t)
  )

(defun linux-cperl-mode()
  (define-key cperl-mode-map [return] 'newline-and-indent)
  (interactive)
  (which-function-mode t)
  (setq cperl-indent-level 2)
  (setq cperl-brace-offset -2)
  (setq cperl-label-offset 0)
  (linum-mode t)
  (view-mode t)
  )

(defun linux-python-mode()
  (which-function-mode t)
  (linum-mode t)
  (view-mode t)
  (python-guess-indent nil)
  (python-indent 2)
  )

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;; Python Hook
(add-hook 'python-mode-hook
          (function (lambda ()
                      (setq indent-tabs-mode nil
                            tab-width 2))))


(defun GNUmakefile-mode()
  (linum-mode t)
  (view-mode t)
  (define-key GNUmakefile-mode-map [return] 'newline-and-indent)
  (define-key GNUmakefile-mode-map "\C-m" 'newline-and-indent)
  )

(global-set-key "\C-m" 'reindent-then-newline-and-indent)

(defun m-nxml-mode-hook ()
  "key definitions for nxml mode"
  (interactive)
  (set-variable 'fill-column 99)
                                        ; nxml key bindings consistent with C-b, C-f, C-p, C-n, M-b, M-f, M-p, M-n
  (define-key nxml-mode-map "\C-of" 'nxml-forward-balanced-item)     ; f for forward
  (define-key nxml-mode-map "\C-ob" 'nxml-backward-balanced-item)    ; b for backward
  (define-key nxml-mode-map "\C-op" 'nxml-backward-element)   ; p consistent with C-p
  (define-key nxml-mode-map "\C-on" 'nxml-forward-element)  ;
  (define-key nxml-mode-map "\M-of" 'nxml-forward-element)     ; f for forward,
  (define-key nxml-mode-map "\M-ob" 'nxml-backward-element)    ; b for backward
  (define-key nxml-mode-map "\M-op" 'nxml-backward-paragraph)   ; p consistent with M-p
  (define-key nxml-mode-map "\M-on" 'nxml-forward-paragraph)  ;
                                        ;(define-key nxml-mode-map "\M-ou" 'nxml-backward-up-element) ; u for up
                                        ;(define-key nxml-mode-map "\M-od" 'nxml-down-element)        ; d for down
  (define-key nxml-mode-map "\M-ok" 'nxml-kill-element)        ; d for down

  (define-key nxml-mode-map [M-insert] 'nxml-copy-tag-contents)
  (define-key nxml-mode-map "\C-xw" 'nxml-kill-tag-contents)

  (define-key nxml-mode-map "\C-cv" 'browse-url-of-buffer) ; should be consistent with the shortcut in the html-mode
  (set-variable 'tab-width 2)

  (message "Defined extra key-bindings for nxml-mode")
  )
(add-hook 'nxml-mode-hook 'm-nxml-mode-hook)

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
(global-set-key (kbd "C-c f") 'forward-sexp)
(global-set-key (kbd "C-c b") 'backward-sexp)

;;(add-hook 'c-mode-common-hook 'highlight-changes-mode)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(menu-bar-mode t)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode nil)
 '(truncate-partial-width-windows nil))

(require 'imenu)
;;(require 'ido)
(defun imenu--completion-buffer (index-alist &optional prompt)
  ;; Create a list for this buffer only when needed.
  (let ((name (thing-at-point 'symbol))
        choice
        (prepared-index-alist
         (if (not imenu-space-replacement) index-alist
           (mapcar
            (lambda (item)
              (cons (subst-char-in-string ?\s (aref imenu-space-replacement 0)
                                          (car item))
                    (cdr item)))
            index-alist))))
    (when (stringp name)
      (setq name (or (imenu-find-default name prepared-index-alist) name)))
    (setq name (ido-completing-read
                "Index item: "
                (mapcar 'car prepared-index-alist)
                nil t nil 'imenu--history-list
                (and name (imenu--in-alist name prepared-index-alist) name)))
    (when (stringp name)
      (setq choice (assoc name prepared-index-alist))
      (if (imenu--subalist-p choice)
          (imenu--completion-buffer (cdr choice) prompt)
        choice))))

(global-set-key (kbd "C-c i") 'imenu)


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
;;(setq org-log-done 'note)

;;Include Emacs diary entries into Org-mode agenda with:
;;(setq org-agenda-include-diary t)
;;(display-time)
;;(add-hook 'diary-hook 'appt-make-list)
;;(diary 0)

(setq org-todo-keywords '("TODO" "STARTED" "WAITING" "DONE"))

;;;; keymap in cscope result buffer
;;(add-hook
;; 'cscope-list-entry-hook
;; (lambda ()
;;   (sucha-cscope-set-list-entry-window-height 11) ;; 11, height 
;;   (define-key cscope-list-entry-keymap "*" 'sucha-cscope-close-window-and-pop-mark)
;;   (define-key cscope-list-entry-keymap (kbd "C-*") 'sucha-cscope-close-window-and-pop-mark)
;;   (define-key cscope-list-entry-keymap (kbd "") 'cscope-select-entry-other-window)
;;   (define-key cscope-list-entry-keymap (kbd "j") 'next-line)
;;   (define-key cscope-list-entry-keymap (kbd "k") 'previous-line)
;;   (define-key cscope-list-entry-keymap (kbd "q") 'kill-buffer-and-window)
;;   ))
;;
;;(defun sucha-cscope-set-list-entry-window-height (wanted-height)
;;  "set cscope-list-entry-window height."
;;  (interactive)
;;  (shrink-window (- (window-height) wanted-height))
;;  (recenter 1))
;;
;;(defun sucha-cscope-close-window-and-pop-mark ()
;;  "close cscope-list-entry-window and pop-mark. only 
;;   use in cscope-list-entry-mode."
;;  (interactive)
;;  (other-window 1)
;;  (delete-other-windows)
;;  (cscope-pop-mark)
;;  (recenter))
;;(add-hook 'c-mode-common-hook 
;;		  (lambda ()
;;;;			(define-key c++-mode-map [(control c) t]  'imenu-tree-window-weight)
;;            (define-key c++-mode-map "." 'cscope-find-global-definition-no-prompting)
;;            (define-key c++-mode-map ","  'cscope-pop-mark)
;;;;            (define-key c++-mode-map "n"  'cscope-next-symbol)
;;;;            (define-key c++-mode-map "p"  'cscope-prev-symbol)
;;			(define-key c++-mode-map (kbd "C-c n") 'ecb-nav-goto-next)
;;			(define-key c++-mode-map (kbd "C-c p") 'ecb-nav-goto-previous)
;;;;			(define-key c-mode-map [(control c) t]  'imenu-tree-window-weight)
;;            (define-key c-mode-map "." 'cscope-find-global-definition-no-prompting)
;;            (define-key c-mode-map ","  'cscope-pop-mark)
;;            (define-key c-mode-map "n"  'cscope-next-symbol)
;;            (define-key c-mode-map "p"  'cscope-prev-symbol)
;;			(define-key c-mode-map (kbd "C-c n")  'ecb-nav-goto-next)
;;			(define-key c-mode-map (kbd "C-c p")  'ecb-nav-goto-previous)
;;;;			(define-key c++-mode-map [(control c) t]  'imenu-tree-window-weight)
;;            (define-key java-mode-map "." 'cscope-find-global-definition-no-prompting)
;;            (define-key java-mode-map ","  'cscope-pop-mark)
;;			(define-key java-mode-map (kbd "C-c n") 'ecb-nav-goto-next)
;;			(define-key java-mode-map (kbd "C-c p") 'ecb-nav-goto-previous)
;;            ))
;;

(add-hook 'c-mode-common-hook 
		  (lambda ()
            ;;			(define-key c++-mode-map [(control c) t]  'imenu-tree-window-weight)
            (define-key c++-mode-map "." 'gtags-find-tag-from-here)
            (define-key c++-mode-map ","  'gtags-pop-stack)
            (define-key c++-mode-map (kbd "C-c s c") 'gtags-find-rtag)
            (define-key c++-mode-map (kbd "C-c s s") 'gtags-find-symbol)
            (define-key c++-mode-map (kbd "C-c s g") 'gtags-find-with-grep)
            (define-key c++-mode-map (kbd "C-c s o") 'gtags-find-tag-other-window)
            (define-key c++-mode-map (kbd "C-c s p") 'gtags-find-pattern)
            (define-key c++-mode-map (kbd "C-c s f") 'gtags-find-file)
            (define-key c-mode-map "." 'gtags-find-tag-from-here)
            (define-key c-mode-map ","  'gtags-pop-stack)
            (define-key c-mode-map (kbd "C-c s c") 'gtags-find-rtag)
            (define-key c-mode-map (kbd "C-c s s") 'gtags-find-symbol)
            (define-key c-mode-map (kbd "C-c s g") 'gtags-find-with-grep)
            (define-key c-mode-map (kbd "C-c s o") 'gtags-find-tag-other-window)
            (define-key c-mode-map (kbd "C-c s p") 'gtags-find-pattern)
            (define-key c-mode-map (kbd "C-c s f") 'gtags-find-file)
            (define-key java-mode-map "." 'gtags-find-tag-from-here)
            (define-key java-mode-map ","  'gtags-pop-stack)
            (define-key java-mode-map (kbd "C-c s c") 'gtags-find-rtag)
            (define-key java-mode-map (kbd "C-c s s") 'gtags-find-symbol)
            (define-key java-mode-map (kbd "C-c s g") 'gtags-find-with-grep)
            (define-key java-mode-map (kbd "C-c s o") 'gtags-find-tag-other-window)
            (define-key java-mode-map (kbd "C-c s p") 'gtags-find-pattern)
            (define-key java-mode-map (kbd "C-c s f") 'gtags-find-file)
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

;;(require 'google-c-style)
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

(require 'my-light-blue)
(my-light-blue)

(server-start)

(require 'browse-kill-ring+)
(browse-kill-ring-default-keybindings)
(setq browse-kill-ring-maximum-display-length nil)
(setq browse-kill-ring-highlight-current-entry t)
(setq browse-kill-ring-separator "------------------------------------------------------------")
(setq browse-kill-ring-display-duplicates nil)
(add-hook 'browse-kill-ring-hook 'browse-kill-ring-my-keys)
(defun browse-kill-ring-my-keys ()
  (define-key browse-kill-ring-mode-map (kbd "RET") 'browse-kill-ring-insert-and-quit-rdonly)
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

;;(require 'linum)
;;(setq linum-format "%4d|")

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
    ;;(define-key map "J" 'scroll-down)
    ;;(define-key map "K" 'scroll-up)
    (define-key map "J" 'goto-line)
    (define-key map "K" 'ido-kill-buffer)
    (define-key map "b" 'backward-word)
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
    (define-key map "i" 'imenu)
    (define-key map "." 'gtags-find-tag-from-here)
    (define-key map ","  'gtags-pop-stack)
    (define-key map (kbd "M-a") 'beginning-of-defun)
    (define-key map (kbd "M-e") 'end-of-defun)
    (define-key map (kbd "C-k") 'View-scroll-line-backward)
    (define-key map (kbd "M-f") 'forward-sexp)
    (define-key map (kbd "M-b") 'backward-sexp)
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

(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "/home/denny/share/emacs/site-lisp/ac-dict")
;;(ac-config-default)
;;
;;    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
;;;; Auto complete  
;;    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
;;(when (require 'auto-complete nil t)  
;;  ;;(require 'auto-complete-extension nil t) ;optional  
;;  ;;(require 'auto-complete-yasnippet nil t) ;optional  
;;  ;;(require 'auto-complete-semantic nil t)  ;optional  
;;  (require 'auto-complete-gtags nil t)     ;optional  
;;  ;;(require 'auto-complete-cpp)  
;;  ;;(ac-c++-init)  
;;  ;;(require 'auto-complete-emacs-lisp)  
;;  ;;(ac-emacs-lisp-init)  
;;  ;;(require 'auto-complete-python)  
;;  ;;(ac-ropemacs-init)  
;;  ;;(require 'auto-complete-ruby)  
;;  ;;(ac-ruby-init)  
;;  ;;(require 'auto-complete-css)  
;;  ;;(ac-css-init)  
;;  ;;(require 'ac-anything)  
;;  ;;(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-anything)  
;;  (setq-default ac-sources '(ac-source-imenu  
;;                             ac-source-abbrev  
;;                             ac-source-words-in-buffer  
;;                             ac-source-files-in-current-dir  
;;                             ac-source-filename))  
;;  (global-auto-complete-mode t)  
;;  ;;(define-key ac-complete-mode-map "/t" 'ac-expand)  
;;  ;;(define-key ac-complete-mode-map "/r" 'ac-complete)  
;;  ;;(define-key ac-complete-mode-map "/M-n" 'ac-next)  
;;  ;;(define-key ac-complete-mode-map "/M-p" 'ac-previous)  
;;  (setq ac-auto-start 1)  
;;  ;;(global-set-key "/M-/" 'ac-start)  
;;  ;;(define-key ac-complete-mode-map "/M-/" 'ac-stop)  
;;  ;;(setq ac-dwim t)  
;;  ;;(setq ac-override-local-map nil)        ;don't override local map  
;;  ;; Enables omnicompletion with `c-mode-common'.  
;;  (add-hook 'c-mode-common-hook  
;;            '(lambda ()  
;;               (add-to-list 'ac-omni-completion-sources  
;;                            (cons "//." '(ac-source-semantic)))  
;;               (add-to-list 'ac-omni-completion-sources  
;;                            (cons "->" '(ac-source-semantic)))  
;;               (add-to-list 'ac-sources 'ac-source-gtags)))  
;;  )
