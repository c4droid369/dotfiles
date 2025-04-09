;; -*- lexical-binding: t; -*-
(require 'setup)

;; Lisp procedures
(setup-define :when
  (lambda (condition &rest body)
    `(when ,condition ,@body))
  :documentation "Evaluates BODY when the condition evaluates to `t'."
  :repeatable t
  :indent 1)

(setup-define :unless
  (lambda (condition &rest body)
    `(unless ,condition ,@body))
  :documentation "Evalulate BODY unless the condition evaluates to `t'."
  :repeatable t
  :indent 1)

(setup-define :advice
  (lambda (symbol where function)
    `(advice-add ',symbol ,where ,function))
  :documentation "Add a piece of advice on a function."
  :after-loaded t
  :debug '(sexp sexp function-form)
  :ensure '(nil nil func)
  :repeatable t)

;; Feature
(setup-define :init
  (lambda (&rest body)
    (macroexp-progn body))
  :documentation "Init keywords like `use-package'.")

(setup-define :load-after
  (lambda (&rest features)
    (let ((body `(require ',(setup-get 'feature))))
      (dolist (feature (nreverse features))
        (setq body `(with-eval-after-load ',feature ,body)))
      body))
  :documentation "Load the current feature after FEATURES.")

(setup-define :after
  (lambda (feature &rest body)
    `(:with-feature ,feature
       (:when-loaded ,@body)))
  :documentation "Eval BODY after FEATURE."
  :indent 1)

;; Diminish modeline
(setup-define :hide-mode
  (lambda (&optional mode)
    (let* ((mode (or mode (setup-get 'mode)))
           (mode (if (string-match-p "-mode\\'" (symbol-name mode))
                     mode
                   (intern (format "%s-mode" mode)))))
      `(setq minor-mode-alist
             (delq (assq ',mode minor-mode-alist) minor-mode-alist))))
  :documentation "Hide the mode-line lighter of the current mode.
Alternative, MODE can be specified manually, and override the current mode."
  :after-loaded t)

;; Straight extension
(setup-define :straight
  (lambda (recipe)
    `(if (guixp)
         nil
       (unless (straight-use-package ',recipe)
	     ,(setup-quit))))
  :documentation
  "Install RECIPE with `straight-use-package'.
This macro can be used as HEAD, and will replace itself with the
first RECIPE's package."
  :repeatable t
  :shorthand (lambda (sexp)
	           (let ((recipe (cadr sexp)))
		         (if (consp recipe)
		             (car recipe)
		           recipe))))

(setup-define :straight-when
  (lambda (recipe condition)
    `(if (guixp)
         nil
       (if ,condition
	       (straight-use-package ',recipe)
	     ,(setup-quit))))
  :documentation
  "Install RECIPE with `straight-use-package' when CONDITION is met.
If CONDITION is false, stop evaluating the body.  This macro can
be used as HEAD, and will replace itself with the RECIPE's
package.  This macro is not repeatable."
  :repeatable nil
  :indent 1
  :shorthand (lambda (sexp)
	           (let ((recipe (cadr sexp)))
		         (if (consp recipe)
		             (car recipe)
		           recipe))))
(provide 'site-setup)
