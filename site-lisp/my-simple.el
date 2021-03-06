(eval-when-compile    (require 'color-theme))
(defun my-simple ()
  "Color theme by upi=PA0024320, created 2011-03-31."
  (interactive)
  (color-theme-install
   '(my-simple
     ((background-color . "#272822")
      (background-toolbar-color . "#e79ddf7ddf7d")
      (border-color . "black")
      (bottom-toolbar-shadow-color . "#8e3886178617")
      (cursor-color . "green")
      (foreground-color . "#fff")
      (mouse-color . "white")
      (senator-eldoc-use-color . t)
      (top-toolbar-shadow-color . "#ffffffffffff")
      (vc-annotate-very-old-color . "#0046FF")
      (viper-saved-cursor-color-in-replace-mode . "Red3"))
     (ediff-current-diff-face-A ((t (:background "pale green" :foreground "firebrick"))))
     (mode-line ((t (:background "RoyalBlue4" :foreground "Gold" :box (:line-width 1 :style released-button)))))
     (mode-line-buffer-id ((t (:bold t :background "#5b5b5b" :foreground "lightgreen" :weight bold))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-inactive ((t (:background "grey30" :foreground "grey80" :box (:line-width -1 :color "grey40" :style nil) :weight light))))
     (which-func ((t (:foreground "#ADFF2F"))))
     )))
(add-to-list 'color-themes '(my-simple  "THEME NAME" "YOUR NAME"))
(provide 'my-simple)
