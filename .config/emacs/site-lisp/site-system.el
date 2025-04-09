;; -*- lexical-binding: t; -*-
;; General platform predicate
(defun linuxp ()
  (eq system-type 'gnu/linux))

(defun windowsp ()
  (eq system-type 'windows-nt))

(defun darwinp ()
  (eq system-type 'darwin))

;; Linux distro predicate
(defun guixp ()
  "Check GNU Emacs is running on Guix System or
Guix package manager installed."
  (and (linuxp)
       (or (file-exists-p "/run/current-system/profile")
	   (file-exists-p "/gnu/store")
	   (with-temp-buffer
	     (when (file-exists-p "/etc/os-release")
	       (insert-file-contents "/etc/os-release")
	       (string-match-p "ID=guix" (buffer-string)))))))

(defun termuxp ()
  "Check GNU Emacs is running on Termux."
  (or (getenv "TERMUX_VERSION")
      (and (linuxp)
	   (string-match-p "com.termux" (expand-file-name "~/../")))))
(provide 'site-system)
