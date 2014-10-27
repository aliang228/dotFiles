(deftheme Administrator
  "Created 2013-10-18.")

(custom-theme-set-variables
 'Administrator
 '(current-language-environment "Chinese-GB")
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(show-paren-mode t)
 '(cua-mode t))

(provide-theme 'Administrator)
