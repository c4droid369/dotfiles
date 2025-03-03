;; Emacs lisp debug
(defconst emacs-debug-mode (or (getenv "DEBUG") init-file-debug))

(setq-default debug-on-error (and (not noninteractive) emacs-debug-mode))

;; Profile
(add-hook 'emacs-startup-hook
	  (lambda ()
	    (message "Emacs ready in %s with %d garbage collections."
		     (format "%.2f seconds"
			     (float-time
			      (time-subtract after-init-time before-init-time)))
		     gcs-done)))

;; Helper function
(defun ensure-directory-exists (dir)
  "Ensure that the directory DIR exists, create it if it doesn't exist."
  (unless (file-exists-p dir)
    (make-directory dir t)))

;; Backup
(setq delete-old-versions t
      version-control t
      vc-make-backup-files t)

(let ((backup-dir (expand-file-name "backup" user-emacs-directory)))
  (setopt backup-directory-alist
	  `(("." . ,(file-name-as-directory backup-dir))))
  (ensure-directory-exists backup-dir))

;; Auto save
(let ((save-dir (expand-file-name "auto-save-list" user-emacs-directory)))
  (setopt auto-save-file-name-transforms
	  `((".*" ,(concat (file-name-as-directory save-dir) "\\2") t)))
  (setopt auto-save-list-file-name
	  (expand-file-name (format ".saves-%d-%s~" (emacs-pid) (system-name))
			    save-dir))
  (ensure-directory-exists save-dir))

;; Emacs daemon
(require 'server)
(unless (server-running-p)
  (server-start))
