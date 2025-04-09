;; -*- lexical-binding: t -*-
(setup lispy
  (:straight lispy)
  (:hide-mode lispy-mode)
  (:hook-into emacs-lisp-mode
              lisp-interaction-mode
              lisp-mode
              scheme-mode))

(setup lispyville
  (:straight lispyville)
  (:load-after lispy)
  (:hide-mode lispyville-mode)
  (:hook-into lispy-mode)
  (lispyville-set-key-theme '(operators c-w additional)))

(setup rainbow-delimiters
  (:straight rainbow-delimiters)
  (:hook-into emacs-lisp-mode
              lisp-interaction-mode
              lisp-mode
              scheme-mode))

(setup guix
  (:straight-when guix (guixp))
  (:hide-mode guix-devel-mode)
  (:with-mode scheme-mode
    (:hook guix-devel-mode)))
(provide 'init-lisp)
