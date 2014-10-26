(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes (quote ("0a3a37c54c881b32d89b8855102f44a5c328119dfa39ad1477987ab02ab0e7a3" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))
 ;;设置初始目录  
 (setq default-directory "f:\\")
(setq inhibit-startup-message t)
 ;;启动0.5秒后自动最大化 （windows下）  
(run-with-idle-timer 0.3 nil 'w32-send-sys-command 61488) 
 ;;显示行号  
 (global-linum-mode 1) 
(require 'php-mode)  
(add-hook 'php-mode-user-hook 'turn-on-font-lock)
;;不备份
(setq make-backup-files nil)
;;hack news 
(require 'hackernews)
;;web mode 
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
;;代码折叠
(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'cperl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;;for svn;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun svn-update()  
  "Svn update"  
  (interactive)  
  (let ((cmd (concat "TortoiseProc.exe /command:update /path:\"" buffer-file-name "\" /closeonend:0")))  
    (message cmd)  
  (shell-command cmd)))  
  
(defun svn-commit()  
  "Svn commit"  
  (interactive)  
  (let ((cmd (concat "TortoiseProc.exe /command:commit /path:\"" buffer-file-name "\" /closeonend:0")))  
    (message cmd)  
  (shell-command cmd)))  
  
;;SVN diff  
(defun svn-diff()  
  "Svn diff"  
  (interactive)  
  (let ((cmd (concat "TortoiseProc.exe /command:diff /path:\"" buffer-file-name "\" /closeonend:0")))  
    (message cmd)  
  (shell-command cmd)))
