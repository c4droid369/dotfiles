;; -*- lexical-binding: t -*-
(setup epa
  (:option epa-pinentry-mode 'loopback))

(setup auth-source
  (:option auth-sources `((:source ,(expand-file-name "secrets/authinfo.gpg" user-emacs-directory)))))

(setup pinentry
  (:straight pinentry)
  (pinentry-start))

(setup pass
  (:straight pass)
  (:after auth-source
    (auth-source-pass-enable)))
(provide 'init-secrets)
