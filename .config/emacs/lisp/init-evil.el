;; -*- lexical-binding: t -*-
(setup evil
  (:straight evil)
  (:init
   (:option evil-want-integration t
            evil-want-keybinding nil))
  (:option evil-undo-system 'undo-redo
           evil-split-window-below t
           evil-vsplit-window-right t
           evil-search-module 'evil-search
           evil-want-Y-yank-to-eol t)
  (evil-mode))

(setup evil-collection
  (:straight evil-collection)
  (:load-after evil-mode)
  (:hide-mode evil-collection-unimpaired-mode)
  (:option evil-collection-setup-minibuffer t)
  (evil-collection-init))

(setup evil-surround
  (:straight evil-surround)
  (:load-after evil-mode)
  (global-evil-surround-mode))

(setup evil-commentary
  (:straight evil-commentary)
  (:load-after evil-mode)
  (:hide-mode evil-commentary-mode)
  (evil-commentary-mode))

(setup evil-easymotion
  (:straight evil-easymotion)
  (evilem-default-keybindings "gs"))

(setup god-mode
  (:straight god-mode)
  (:hide-mode god-local-mode))

(setup evil-god-state
  (:straight evil-god-state)
  (:load-after god-mode evil-mode)
  (evil-define-key 'normal global-map "," 'evil-execute-in-god-state)
  (evil-define-key 'god global-map [escape] 'evil-god-state-bail))

(setup evil-escape
  (:straight evil-escape)
  (:load-after evil-mode)
  (:hide-mode evil-escape-mode)
  (:option evil-escape-key-sequence "jk")
  (evil-escape-mode))

(setup vimish-fold
  (:straight vimish-fold)
  (:load-after evil-mode))

(setup evil-vimish-fold
  (:straight evil-vimish-fold)
  (:load-after vimish-fold)
  (:hide-mode evil-vimish-fold-mode)
  (:hook-into prog-mode))

(setup evil-matchit
  (:straight evil-matchit)
  (:load-after evil-mode)
  (global-evil-matchit-mode))

(setup evil-args
  (:straight evil-args)
  (:load-after evil-mode)
  (:with-map evil-inner-text-objects-map
    (:bind "a" evil-inner-arg))
  (:with-map evil-outer-text-objects-map
    (:bind "a" evil-outer-arg))
  (:with-map evil-normal-state-map
    (:bind "L" evil-forward-arg
           "H" evil-backward-arg
           "K" evil-jump-out-args))
  (:with-map evil-motion-state-map
    (:bind "L" evil-forward-arg
           "H" evil-backward-arg)))

(setup evil-indent-plus
  (:straight evil-indent-plus)
  (:load-after evil-mode)
  (evil-indent-plus-default-bindings))
(provide 'init-evil)
