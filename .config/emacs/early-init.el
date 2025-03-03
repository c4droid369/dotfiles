;; -*- lexical-binding: t -*-
;; GC optimization
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.7)

(add-hook 'emacs-startup-hook
	  (lambda ()
	    (setq gc-cons-threshold (* 16 1024 1024)
		  gc-cons-percentage 0.1)))

;; Load prefer newer in noninteractive session
(setq load-prefer-newer noninteractive)

;; Resize emacs frame
(setq frame-inhibit-implied-resize t)

;; Remove command line options that aren't relevant to current OS
(unless (eq system-type 'darwin)
  (setq command-line-ns-option-alist nil))
(unless (eq system-type 'gnu/linux)
  (setq command-line-x-option-alist nil))

;; Prevent emacs from automatically initializing packages at startup.
(setq package-enable-at-startup nil)

(provide 'early-init)
