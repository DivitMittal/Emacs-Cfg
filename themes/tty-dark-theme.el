(deftheme tty-dark
  "tty-dark theme")

(custom-theme-set-faces
 'tty-dark

 '(default ((t (:background "#00000" :foreground "white"))))
 '(mouse ((t (:foregound "black"))))
 '(cursor ((t (:foregound "red"))))
 '(border ((t (:foregound "blue"))))

 '(bold ((t (:underline t :background "black" :foreground "white"))))
 '(bold-italic ((t (:underline t :foreground "white"))))
 '(calendar-today-face ((t (:underline t))))
 '(diary-face ((t (:foreground "red"))))
 '(font-lock-builtin-face ((t (:foreground "#ff10f0"))))
 '(font-lock-comment-face ((t (:foreground "#0033ff"))))
 '(font-lock-constant-face ((t (:foreground "#ff6600"))))
 '(font-lock-function-name-face ((t (:foreground "cyan"))))
 '(font-lock-keyword-face ((t (:foreground "red"))))
 '(font-lock-string-face ((t (:foreground "green"))))
 '(font-lock-type-face ((t (:foreground "yellow"))))
 '(font-lock-variable-name-face ((t (:foreground "#fd1c03"))))
 '(font-lock-warning-face ((t (:bold t :foreground "magenta"))))
 '(highlight ((t (:background "blue" :foreground "yellow"))))
 '(holiday-face ((t (:background "cyan"))))
 '(info-menu-5 ((t (:underline t))))
 '(info-node ((t (:italic t :bold t))))
 '(info-xref ((t (:bold t))))
 '(italic ((t (:underline t :background "red"))))
 '(message-cited-text-face ((t (:foreground "red"))))
 '(message-header-cc-face ((t (:bold t :foreground "green"))))
 '(message-header-name-face ((t (:foreground "green"))))
 '(message-header-newsgroups-face ((t (:italic t :bold t :foreground "yellow"))))
 '(message-header-other-face ((t (:foreground "#b00000"))))
 '(message-header-subject-face ((t (:foreground "green"))))
 '(message-header-to-face ((t (:bold t :foreground "green"))))
 '(message-header-xheader-face ((t (:foreground "blue"))))
 '(message-mml-face ((t (:foreground "green"))))
 '(message-separator-face ((t (:foreground "blue"))))

 '(modeline ((t (:background "yellow" :foreground "blue"))))
 '(modeline-buffer-id ((t (:background "white" :foreground "red"))))
 '(modeline-mousable ((t (:background "white" :foreground "magenta"))))
 '(modeline-mousable-minor-mode ((t (:background "white" :foreground "yellow"))))
 '(region ((t (:background "white" :foreground "black"))))
 '(zmacs-region ((t (:background "cyan" :foreground "black"))))
 '(secondary-selection ((t (:background "blue"))))
 '(show-paren-match-face ((t (:background "red"))))
 '(show-paren-mismatch-face ((t (:background "magenta" :foreground "white"))))
 '(underline ((t (:underline t)))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'tty-dark)

;;; tty-dark-theme.el ends here