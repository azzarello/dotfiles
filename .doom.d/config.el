;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Connor Azzarello"
      user-mail-address "cazzarello@scu.edu")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; Font Configuration
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 20))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-nord)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)
;; Trigger completion immediately.
(setq company-idle-delay 0)

;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-numbers t)

(display-time-mode 1)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.


;; zathura as LaTeX viewer
(setq +latex-viewers '(zathura))

;; code stats
(setq code-stats-token "SFMyNTY.WVhwNllYSmxiR3h2IyNNVE15T0RBPQ.bvLFIxasUg5_b-QqWZSsX0ALe4sptu7ijaFOAY5Zokw")
(add-hook 'prog-mode-hook #'code-stats-mode)
(run-with-idle-timer 30 t #'code-stats-sync)
(add-hook 'kill-emacs-hook (lambda () (code-stats-sync :wait)))

;; Here are some additional functions/macros that could help you configure Doom:
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")
;;(require 'smtpmail)
(setq user-mail-address "connor.azzarello@gmail.com"
      user-full-name  "Connor Azzarello"
      ;; I have my mbsyncrc in a different folder on my system, to keep it separate from the
      ;; mbsyncrc available publicly in my dotfiles. You MUST edit the following line.
      ;; Be sure that the following command is: "mbsync -c ~/.config/mu4e/mbsyncrc -a"
      mu4e-get-mail-command "mbsync -c ~/.config/mu4e-dt/mbsyncrc -a"
      mu4e-update-interval  300
      mu4e-main-buffer-hide-personal-addresses t
      message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      smtpmail-starttls-credentials '(("smtp.1and1.com" 587 nil nil))
      mu4e-sent-folder "/account-1/Sent"
      mu4e-drafts-folder "/account-1/Drafts"
      mu4e-trash-folder "/account-1/Trash"
      mu4e-maildir-shortcuts
      '(("/account-1/Inbox"      . ?i)
        ("/account-1/Sent Items" . ?s)
        ("/account-1/Drafts"     . ?d)
        ("/account-1/Trash"      . ?t)))
