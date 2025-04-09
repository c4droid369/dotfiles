;; -*- lexical-binding: t -*-
(setup erc
  (:require erc)
  (add-to-list 'erc-modules 'sasl)
  (:option erc-nick user-full-name
           erc-server "irc.libera.chat"
           erc-sasl-user user-full-name
           erc-sasl-auth-source-function 'erc-sasl-auth-source-password-as-host
           erc-autojoin-channels-alist '(("#church_of_security")))
  (defalias 'erc 'erc-tls))
(provide 'init-chat)
