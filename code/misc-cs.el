;;js2-mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;;enabling the hide-show mode
(add-hook 'prog-mode-hook #'hs-minor-mode)

;; Adding the config for ac-nrepl (auto completion for nrepl)

(require 'auto-complete)
(global-auto-complete-mode)

(provide 'misc-cs)
