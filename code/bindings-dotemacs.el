;;https://github.com/syl20bnr/dotemacs.git
;; Regular shortcuts ==========================================================

;; simple and more consistent keyboard quit key bindings
;; thanks to Bin Chen for the idea (http://blog.binchen.org/?p=735)
;; (global-set-key (kbd "f")
;;   (lambda () (interactive) (fd-trigger 'keyboard-quit)))
;; (define-key minibuffer-local-map (kbd "f")
;;   (lambda () (interactive) (fd-trigger 'abort-recursive-edit)))
;; ;; the original hot key of helm-keyboard-quit is "C-g"
;; (define-key helm-map (kbd "f")
;;   (lambda () (interactive) (fd-trigger 'helm-keyboard-quit)))
;; ;; evil -----------------------------------------------------------------------
;; ;; easier toggle for emacs-state
;; (evil-set-toggle-key "s-`")
;; ;; returns to normal mode
;; (define-key evil-insert-state-map "f"
;;   (lambda () (interactive) (fd-trigger 'evil-normal-state)))
;; (define-key evil-visual-state-map "f"
;;   (lambda () (interactive) (fd-trigger 'evil-exit-visual-state)))
;; (define-key evil-emacs-state-map "f"
;;   (lambda () (interactive) (fd-trigger 'evil-normal-state)))
;; (define-key evil-motion-state-map "f"
;;   (lambda () (interactive) (fd-trigger 'evil-normal-state)))
;; ;; set back go to char key bindings in normal modes
;; (define-key evil-normal-state-map   "f" 'evil-find-char)
;; (define-key evil-operator-state-map "f" 'evil-find-char)
;; ;
                                        ; Make evil-mode up/down operate in screen lines instead of logical lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
;; Easy access to ace-jump (wants a very quick trigger,
;; evil-leader is too slow).
;; pop mark is performed using the evil-leader + ,
(define-key evil-normal-state-map (kbd ";") 'ace-jump-mode)

;; evil-leader shortcuts ======================================================

;; M-x ------------------------------------------------------------------------
(evil-leader/set-key ":" 'execute-extended-command)
;; ace-jump -------------------------------------------------------------------
(evil-leader/set-key ";" (lambda () (interactive)
                             (ace-jump-mode-pop-mark) (golden-ratio)))
;; switch window by number ----------------------------------------------------
(evil-leader/set-key "0" 'select-window-0)
(evil-leader/set-key "1" 'select-window-1)
(evil-leader/set-key "2" 'select-window-2)
(evil-leader/set-key "3" 'select-window-3)
(evil-leader/set-key "4" 'select-window-4)
(evil-leader/set-key "5" 'select-window-5)
(evil-leader/set-key "6" 'select-window-6)
(evil-leader/set-key "7" 'select-window-7)
(evil-leader/set-key "8" 'select-window-8)
(evil-leader/set-key "9" 'select-window-9)
;; applications ---------------------------------------------------------------
(evil-leader/set-key "ad" 'dired)
(evil-leader/set-key "ae" 'erc-start-or-switch)
(evil-leader/set-key "ag" 'magit-status)
;; (evil-leader/set-key "am" 'mu4e-up-to-date-status)
(evil-leader/set-key "ap" 'proced)
(evil-leader/set-key "ase" 'eshell)
(evil-leader/set-key "asi" 'shell)
(evil-leader/set-key "ast" 'multi-term)
(evil-leader/set-key "at" 'twit)
(evil-leader/set-key "au" 'undo-tree-visualize)
(evil-leader/set-key "ay" 'helm-c-yas-complete)
;; buffers --------------------------------------------------------------------
(evil-leader/set-key "bd" 'delete-current-buffer-file)
(evil-leader/set-key "bK" 'kill-other-buffers)
(evil-leader/set-key "bk" 'ido-kill-buffer)
(evil-leader/set-key "bmh" (lambda () (interactive)
                             (buf-move-left) (golden-ratio)))
(evil-leader/set-key "bmj" (lambda () (interactive)
                             (buf-move-down) (golden-ratio)))
(evil-leader/set-key "bmk" (lambda () (interactive)
                             (buf-move-up) (golden-ratio)))
(evil-leader/set-key "bml" (lambda () (interactive)
                             (buf-move-right) (golden-ratio)))
(evil-leader/set-key "bn" 'switch-to-next-buffer)
(evil-leader/set-key "bp" 'switch-to-prev-buffer)
(evil-leader/set-key "br" 'rename-current-buffer-file)
(evil-leader/set-key "bs" 'helm-mini)
;; errors ---------------------------------------------------------------------
(evil-leader/set-key "en" 'next-error)
(evil-leader/set-key "ep" 'previous-error)
;; editors --------------------------------------------------------------------
(evil-leader/set-key "eds" 'string-edit-at-point)
;; find -----------------------------------------------------------------------
(evil-leader/set-key "ff" 'ido-find-file)
;; file -----------------------------------------------------------------------
(evil-leader/set-key "fS" 'evil-write-all)
(evil-leader/set-key "fs" 'evil-write)
;; flycheck -------------------------------------------------------------------
(evil-leader/set-key "fl" 'flycheck-list-errors)
(evil-leader/set-key "fn" 'flycheck-next-error)
(evil-leader/set-key "fp" 'flycheck-previous-error)
;; git ------------------------------------------------------------------------
(evil-leader/set-key "gs" 'magit-status)
;; auto-highlight-symbol ------------------------------------------------------
(evil-leader/set-key "hb" 'ahs-chrange-whole-buffer)
(evil-leader/set-key "hd" 'ahs-chrange-display)
(evil-leader/set-key "he" 'ahs-edit-mode)
(evil-leader/set-key "hf" 'ahs-chrange-beginning-of-defun)
(evil-leader/set-key "hh" 'auto-highlight-symbol-mode)
(evil-leader/set-key "hn" 'ahs-forward)
(evil-leader/set-key "hp" 'ahs-backward)
;; insert stuff ---------------------------------------------------------------
(evil-leader/set-key "ij" 'evil-insert-line-below)
(evil-leader/set-key "ik" 'evil-insert-line-above)
;; format ---------------------------------------------------------------------
(evil-leader/set-key "jk" 'evil-join)
(evil-leader/set-key "ji" (lambda () (interactive)
                            (join-line 1) (paredit-newline)))
(evil-leader/set-key "jj" 'paredit-newline)
;; Lisps ----------------------------------------------------------------------
(evil-leader/set-key "lB" 'paredit-backward-barf-sexp)
(evil-leader/set-key "lb" 'paredit-forward-barf-sexp)
(evil-leader/set-key "lc" 'paredit-convolute-sexp)
(evil-leader/set-key "ld" 'paredit-kill)
(evil-leader/set-key "lJ" 'paredit-join-sexps)
(evil-leader/set-key "l C-j" 'paredit-split-sexp)
(evil-leader/set-key "lj" 'paredit-splice-sexp-killing-forward)
(evil-leader/set-key "lk" 'paredit-splice-sexp-killing-backward)
(evil-leader/set-key "lr" 'paredit-raise-sexp)
(evil-leader/set-key "lS" 'paredit-backward-slurp-sexp)
(evil-leader/set-key "ls" 'paredit-forward-slurp-sexp)
(evil-leader/set-key "lw" 'paredit-wrap-round)
;; major modes ----------------------------------------------------------------
;; C/C++
(evil-leader/set-key "Mcc" 'compile)
;; Erlang
(evil-leader/set-key "Mec" 'edts-who-calls)
(evil-leader/set-key "Med" 'edts-find-doc)
(evil-leader/set-key "Mef" 'edts-find-source-under-point)
(evil-leader/set-key "Meg" 'edts-find-global-function)
(evil-leader/set-key "Meh" 'edts-find-header-source)
(evil-leader/set-key "Mel" 'edts-find-local-function)
(evil-leader/set-key "Mem" 'edts-find-macro-source)
(evil-leader/set-key "Mer" 'edts-find-record-source)
(evil-leader/set-key "Mex" 'edts-refactor-extract-function)
;; Html
(evil-leader/set-key "C-<right>" 'tagedit-forward-slurp-tag)
(evil-leader/set-key "C-<left>" 'tagedit-forward-barf-tag)
(evil-leader/set-key "M-r" 'tagedit-raise-tag)
(evil-leader/set-key "C-k" 'tagedit-kill)
(evil-leader/set-key "s-k" 'tagedit-kill-attribute)
;; Python
(evil-leader/set-key "Mp1" 'nosetests-one)
(evil-leader/set-key "Mp!" 'nosetests-pdb-one)
(evil-leader/set-key "Mpa" 'nosetests-all)
(evil-leader/set-key "MpA" 'nosetests-pdb-all)
(evil-leader/set-key "Mpb" 'python-add-breakpoint)
(evil-leader/set-key "Mpd" 'pylookup-lookup)
(evil-leader/set-key "Mpf" 'jedi:goto-definition)
(evil-leader/set-key "Mpm" 'nosetests-module)
(evil-leader/set-key "MpM" 'nosetests-pdb-module)
;; narrow & widen -------------------------------------------------------------
(evil-leader/set-key "nr" 'narrow-to-region)
(evil-leader/set-key "np" 'narrow-to-page)
(evil-leader/set-key "nf" 'narrow-to-defun)
(evil-leader/set-key "nw" 'widen)
;; projectile -----------------------------------------------------------------
(evil-leader/set-key "pb" 'projectile-switch-to-buffer)
(evil-leader/set-key "pC" 'projectile-invalidate-cache)
(evil-leader/set-key "pd" 'projectile-dired)
(evil-leader/set-key "pf" 'helm-projectile)
(evil-leader/set-key "pF" 'projectile-find-file)
(evil-leader/set-key "pk" 'projectile-kill-buffers)
(evil-leader/set-key "pg" 'projectile-grep)
(evil-leader/set-key "po" 'projectile-multi-occur)
(evil-leader/set-key "pr" 'projectile-replace)
;; perforce -------------------------------------------------------------------
(evil-leader/set-key "p4a" 'p4-add)
(evil-leader/set-key "p4d" 'p4-delete)
(evil-leader/set-key "p4D" 'p4-describe)
(evil-leader/set-key "p4e" 'p4-edit)
(evil-leader/set-key "p4r" 'p4-revert)
;; quickrun -------------------------------------------------------------------
(evil-leader/set-key "qba" 'quickrun-arg)
(evil-leader/set-key "qbc" 'quickrun-compile-only)
(evil-leader/set-key "qbs" 'quickrun-shell)
(evil-leader/set-key "qbx" 'quickrun)
(evil-leader/set-key "qeb" 'eval-buffer)
(evil-leader/set-key "qex" 'eval-last-sexp)
(evil-leader/set-key "qh"  'helm-quickrun)
(evil-leader/set-key "qrr" 'quickrun-replace-region)
(evil-leader/set-key "qrx" 'quickrun-region)
;; replace --------------------------------------------------------------------
(evil-leader/set-key "rR" 'vr/query-replace)
(evil-leader/set-key "rr" 'vr/replace)
;; show -----------------------------------------------------------------------
(evil-leader/set-key "sk" 'helm-show-kill-ring)
(evil-leader/set-key "sr" 'evil-show-registers)
;; toggle ---------------------------------------------------------------------
(evil-leader/set-key "t8" 'toggle-fill-column-indicator)
(evil-leader/set-key "ta"  'auto-complete-mode)
(evil-leader/set-key "tc"  'rainbow-mode)
(evil-leader/set-key "tf"  'fringe-mode)
(evil-leader/set-key "th"  'auto-highlight-symbol-mode)
(evil-leader/set-key "tm"  'powerline-minor-modes-toggle)
(evil-leader/set-key "tn"  'global-linum-mode)
(evil-leader/set-key "ttd" 'load-theme-day)
(evil-leader/set-key "ttn" 'load-theme-night)
;; selection ------------------------------------------------------------------
(evil-leader/set-key "v" 'er/expand-region)
;; window ---------------------------------------------------------------------
(evil-leader/set-key "wb" 'evenly-split-window-right)
(evil-leader/set-key "wc" 'delete-window)
(evil-leader/set-key "wd" 'toggle-current-window-dedication)
(evil-leader/set-key "wH" 'evil-window-move-far-left)
(evil-leader/set-key "wh" 'evil-window-left)
(evil-leader/set-key "wJ" 'evil-window-move-very-bottom)
(evil-leader/set-key "wj" 'evil-window-down)
(evil-leader/set-key "wK" 'evil-window-move-very-top)
(evil-leader/set-key "wk" 'evil-window-up)
(evil-leader/set-key "wL" 'evil-window-move-far-right)
(evil-leader/set-key "wl" 'evil-window-right)
(evil-leader/set-key "wm" 'toggle-maximize-buffer)
(evil-leader/set-key "wr" 'rotate-windows)
(evil-leader/set-key "wR" 'rotate-windows-backward)
(evil-leader/set-key "wv" 'evenly-split-window-below)
(evil-leader/set-key "wsh" 'shrink-window-horizontally)
(evil-leader/set-key "wsj" 'shrink-window)
(evil-leader/set-key "wsk" 'enlarge-window)
(evil-leader/set-key "wsl" 'enlarge-window-horizontally)
(evil-leader/set-key "wU" 'winner-redo)
(evil-leader/set-key "wu" 'winner-undo)
(evil-leader/set-key "ww" 'other-window)
;; text -----------------------------------------------------------------------
(evil-leader/set-key "xdw" 'delete-trailing-whitespace)
(evil-leader/set-key "xgT" 'google-translate-query-translate)
(evil-leader/set-key "xgt" 'google-translate-at-point)
(evil-leader/set-key "xgR" 'google-translate-query-translate-reverse)
(evil-leader/set-key "xgr" 'google-translate-at-point-reverse)
(evil-leader/set-key "xmj" 'move-text-down)
(evil-leader/set-key "xmk" 'move-text-up)
(evil-leader/set-key "xtc" 'transpose-chars)
(evil-leader/set-key "xtl" 'transpose-lines)
(evil-leader/set-key "xtw" 'transpose-words)
(evil-leader/set-key "xU" 'upcase-word)
(evil-leader/set-key "xu" 'downcase-word)
;; centered cursor ------------------------------------------------------------
(evil-leader/set-key "zz" 'global-centered-cursor-mode)

(provide 'bindings-dotemacs)
