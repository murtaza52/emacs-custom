;;; package --- Summary
;;; Commentary:
;; evil mode

;; enabling evil-leader before evil so that it is avalaible even in the initial buffers
(require 'evil-leader)
(global-evil-leader-mode)

(require 'evil)
(evil-mode 1)

;; loading the evil paredit mode with lisp mode
;; (require 'evil-paredit)
;; (add-hook 'emacs-lisp-mode-hook 'evil-paredit-mode)
;; (add-hook 'clojure-mode-hook 'evil-paredit-mode)

;; C-c as general purpose escape key sequence.
;; (defun my-esc (prompt)
;;   "Functionality for escaping generally.  Includes exiting Evil insert state and C-g binding. "
;;   (cond
;;    ;; If we're in one of the Evil states that defines [escape] key, return [escape] so as
;;    ;; Key Lookup will use it.
;;    ((or (evil-insert-state-p) (evil-normal-state-p) (evil-replace-state-p) (evil-visual-state-p)) [escape])
;;    ;; This is the best way I could infer for now to have C-c work during evil-read-key.
;;    ;; Note: As long as I return [escape] in normal-state, I don't need this.
;;    ;;((eq overriding-terminal-local-map evil-read-key-map) (keyboard-quit) (kbd ""))
;;    (t (kbd "C-g"))))
;; (define-key key-translation-map (kbd "C-g") 'my-esc)
;; ;; Works around the fact that Evil uses read-event directly when in operator state, which
;; ;; doesn't use the key-translation-map.
;; (define-key evil-operator-state-map (kbd "C-g") 'keyboard-quit)
;; ;; Not sure what behavior this changes, but might as well set it, seeing the Elisp manual's
;; ;; documentation of it.
;; (set-quit-char "C-g")

;; (key-chord-define evil-insert-state-map "tt" 'evil-normal-state)

;;; esc quits

;; (define-key evil-normal-state-map [escape] 'keyboard-quit)
;; (define-key evil-visual-state-map [escape] 'keyboard-quit)
;; (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;; (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

 ;; ;; change mode-line color by evil state
 ;;   (lexical-let ((default-color (cons (face-background 'mode-line)
 ;;                                      (face-foreground 'mode-line))))
 ;;     (add-hook 'post-command-hook
 ;;       (lambda ()
 ;;         (let ((color (cond ((minibufferp) default-color)
 ;;                            ((evil-insert-state-p) '("#006fa0" . "#ffffff"))
 ;;                            ((evil-emacs-state-p)  '("#444488" . "#ffffff"))
 ;;                            ((buffer-modified-p)   '("#e80000" . "#ffffff"))
 ;;                            (t default-color))))
 ;;           (set-face-background 'mode-line (car color))
 ;;           (set-face-foreground 'mode-line (cdr color))))))

;; save buffer on exiting insert mode
;; (add-hook 'evil-insert-state-exit-hook 'save-buffer)

;; changing the keybinding for ace jump as it conflicts with evil mode
(key-chord-define-global "jk" nil)
(key-chord-define-global "jj" nil)
(key-chord-define-global "jl" nil)

;; (key-chord-define-global ",n" 'ace-jump-word-mode)
;; (key-chord-define-global "bb" 'ace-jump-char-mode)
;; (key-chord-define-global "mm" 'ace-jump-line-mode)


;; Changing projectile prefix key  as it conflicts with evil mode
;; ;; (require 'projectile)
;; (setq projectile-keymap-prefix (kbd "C-n"))

(provide 'evil-cs)
