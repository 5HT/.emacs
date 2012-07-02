
;; maxim@synrc.com

(custom-set-variables
 '(warning-minimum-level :error)
 '(desktop-enable t nil (desktop))
 '(cua-mode t nil (cua-base))
 '(ido-mode t)
 '(tool-bar-mode nil))

(setq x-select-enable-clipboard t)	; make copy paste working with X11

(transient-mark-mode t)         	; make the current 'selection' visible
(delete-selection-mode t)       	; delete the selection area with a keypress

(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil 
		:box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal
		:height 128 :width normal :foundry "unknown" :family "Ubuntu Mono")))))

(setq inhibit-splash-screen t)

(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
                          ("gnu" . "http://elpa.gnu.org/packages/")
                        ("marmalade" . "http://marmalade-repo.org/packages/")))

(when (load (expand-file-name "~/.emacs.d/marmelade-package.el"))
    (package-initialize))

(setq load-path (cons  "/usr/lib/erlang/lib/tools-2.6.6.5/emacs" load-path))
    (setq erlang-root-dir "/usr/lib/erlang")
    (setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
    (require 'erlang-start)

(add-to-list 'load-path "/home/maxim/.emacs.d/distel/elisp")
    (require 'distel)
    (distel-setup)

(add-to-list 'load-path "/home/maxim/.emacs.d/windows")
    (require 'windows)
    (resume-windows)

