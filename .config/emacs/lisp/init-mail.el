;; -*- lexical-binding: t -*-
(setup gnus
  (:option gnus-select-method '(nnimap "imap.qq.com"
                                       (nnimap-address "imap.qq.com")
                                       (nnimap-server-port 993)
                                       (nnimap-stream ssl)
                                       (nnir-search-engine imap))
           gnus-thread-sort-functions '(gnus-thread-sort-by-most-recent-date
                                        (not gnus-thread-sort-by-number))))

(setup send-mail
  (:option message-send-mail-function 'smtpmail-send-it
           smtpmail-default-smtp-server "smtp.qq.com"
           smtpmail-smtp-service 587
           smtpmail-stream-type 'ssl))
(provide 'init-mail)
