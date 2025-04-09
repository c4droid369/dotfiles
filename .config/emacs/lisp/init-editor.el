;; -*- lexical-binding: t -*-
(setup user-info
  (:option user-full-name "c4droid"
           user-mail-address "c4droid@foxmail.com"))

(setup user-interface
  (:option inhibit-startup-screen t))

(setup editing
  (:option tab-width 4
	       indent-tabs-mode nil
           use-short-answers t)
  (electric-pair-mode))

(setup auto-save
  (:option auto-save-file-name-transforms `((".*" ,(expand-file-name "auto-save/" user-emacs-directory) t))))

(setup backup
  (:option backup-directory-alist `((".*" . ,(expand-file-name "backups" user-emacs-directory)))
           backup-by-copying t))

(setup lockfile
  (:option create-lockfiles nil))
(provide 'init-editor)
