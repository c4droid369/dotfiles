;; -*- lexical-binding: t -*-
(setup epa
  (:option epa-pinentry-mode 'loopback))

(setup auth-source
  (:option auth-sources `((:source ,(expand-file-name "secrets/authinfo.gpg" user-emacs-directory)))))

(setup pinentry
  (:straight pinentry)
  (pinentry-start))
(provide 'init-secrets)
