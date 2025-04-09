;; -*- lexical-binding: t; no-byte-compile: t; -*-
(add-to-list 'load-path (expand-file-name "bootstrap" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "3rdparty" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))

(require 'site-system)

(unless (guixp)
  (require 'bootstrap-straight))
(require 'bootstrap-setup)

(require 'init-editor)
(require 'init-evil)
(require 'init-prog)
(require 'init-lisp)
(require 'init-chat)
(require 'init-mail)
(require 'init-secrets)
