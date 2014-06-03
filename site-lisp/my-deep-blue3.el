(eval-when-compile    (require 'color-theme))
(provide 'my-deep-blue3)
(defun my-deep-blue3 ()
  (interactive)
  (color-theme-install
   '(my-deep-blue3
     ((background-color . "#282624")
      (background-mode . dark)
      (border-color . "#111")
      (cursor-color . "yellow")
      (foreground-color . "#ddd")
      (mouse-color . "sienna1"))
     (default ((t (:background "#121212" :foreground "#fff"))))
     (blue ((t (:foreground "blue"))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:bold t :slant italic))))
     (border-glyph ((t (nil))))
     (buffers-tab ((t (:background "#111" :foreground "#ddd"))))
     ;;(font-lock-builtin-face ((t (:foreground "#dd7b3b"))))
     (font-lock-builtin-face ((t (:foreground "#B0E2FF"))))
     ;;(font-lock-comment-face ((t (:foreground "#777777" ))))
     ;;(font-lock-comment-face ((t (:foreground "#A0A0A0" ))))
     ;;(font-lock-comment-face ((t (:foreground "#4682B4" ))))
     ;;(font-lock-comment-face ((t (:foreground "#808080" ))))
     (font-lock-comment-face ((t (:foreground "#777777" ))))
     ;;(font-lock-constant-face ((t (:foreground "#99cf50"))))
     (font-lock-constant-face ((t (:foreground "#fff"))))
     (font-lock-doc-string-face ((t (:foreground "#777777"))))
     ;;(font-lock-function-name-face ((t (:background "back" :foreground "#e9c062" :bold t))))
     (font-lock-function-name-face ((t (:foreground "#E0FFFF" :bold t))))
     ;;(font-lock-keyword-face ((t (:foreground "#cf6a4c" :bold t))))
     (font-lock-keyword-face ((t (:bold t :foreground "#87ceeb" :weight bold))))
     ;;(font-lock-preprocessor-face ((t (:foreground "#aeaeae"))))
     (font-lock-preprocessor-face ((t (:foreground "#87ceeb"))))
     (font-lock-reference-face ((t (:foreground "#fff"))))
     ;;(font-lock-reference-face ((t (:foreground "8b98ab"))))
     ;;(font-lock-string-face ((t (:foreground "#65b042"))))
     (font-lock-string-face ((t (:foreground "#ffa0a0"))))
     ;;(font-lock-type-face ((t (:foreground "#c5af75"))))
     ;;(font-lock-type-face ((t (:foreground "#B0E2FF"))))
     (font-lock-type-face ((t (:foreground "#fff"))))
     (font-lock-variable-name-face ((t (:foreground "#fff"))))
     ;;(font-lock-variable-name-face ((t (:foreground "#65b042"))))
     (font-lock-warning-face ((t (:bold t :background "#420e09" :foreground "#777777"))))
     (erc-current-nick-face ((t (:foreground "#aeaeae"))))
     (erc-default-face ((t (:foreground "#ddd"))))
     (erc-keyword-face ((t (:foreground "#cf6a4c"))))
     (erc-notice-face ((t (:foreground "#666"))))
     (erc-timestamp-face ((t (:foreground "#65b042"))))
     (erc-underline-face ((t (:foreground "c5af75"))))
     (nxml-attribute-local-name-face ((t (:foreground "#3387cc"))))
     (nxml-attribute-colon-face ((t (:foreground "#e28964"))))
     (nxml-attribute-prefix-face ((t (:foreground "#cf6a4c"))))
     (nxml-attribute-value-face ((t (:foreground "#65b042"))))
     (nxml-attribute-value-delimiter-face ((t (:foreground "#99cf50"))))
     (nxml-namespace-attribute-prefix-face ((t (:foreground "#9b859d"))))
     (nxml-comment-content-face ((t (:foreground "#666"))))
     (nxml-comment-delimiter-face ((t (:foreground "#333"))))
     (nxml-element-local-name-face ((t (:foreground "#e9c062"))))
     (nxml-markup-declaration-delimiter-face ((t (:foreground "#aeaeae"))))
     (nxml-namespace-attribute-xmlns-face ((t (:foreground "#8b98ab"))))
     (nxml-prolog-keyword-face ((t (:foreground "#c5af75"))))
     (nxml-prolog-literal-content-face ((t (:foreground "#dad085"))))
     (nxml-tag-delimiter-face ((t (:foreground "#cda869"))))
     (nxml-tag-slash-face ((t (:foreground "#cda869"))))
     (nxml-text-face ((t (:foreground "#ddd"))))
     (mode-line ((t (:background "RoyalBlue4" :foreground "Gold" :box (:line-width 1 :style released-button)))))
     (mode-line-buffer-id ((t (:bold t :background "#5b5b5b" :foreground "lightgreen" :weight bold))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-inactive ((t (:background "grey30" :foreground "grey80" :box (:line-width -1 :color "grey40" :style nil) :weight light))))
     (which-func ((t (:foreground "#ADFF2F"))))
     (mumamo-background-chunk-submode1 ((t (:background "#101820"))))
     (whitespace-line ((t nil)))
     (whitespace-space ((t (:foreground "#444" :family "Monaco"))))
     (whitespace-tab ((t (:foreground "#444" :family "Monaco"))))
     (gui-element ((t (:background "#0e2231" :foreground "black"))))
     (highlight ((t (:background "#111"))))
     (hl-line ((t (:background "#111"))))
     (highline-face ((t (:background "#4a410d"))))
     (italic ((t (nil))))
     (left-margin ((t (nil))))
     (mmm-default-submode-face ((t (:background "#111"))))
     (mode-line ((t (:background "#e6e5e4" :foreground "black"))))
     (primary-selection ((t (:background "#222"))))
     (region ((t (:background "#4a410d"))))
     (text-cursor ((t (:background "yellow" :foreground "black"))))
     (underline ((nil (:underline nil))))
     (minibuffer-prompt ((t (:foreground "cyan"))))
     )))

