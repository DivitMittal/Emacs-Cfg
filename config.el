;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "YourName")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "CaskaydiaCove NFM" :size 12 :weight 'semi-light) doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-ayu-dark)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; Shared with Neovim (see Vim-Cfg/lua/plugins/org.lua) and synced with the vault.
;; `org-roam-directory' defaults to "roam" under this, which is where org-roam.nvim writes.
(setq org-directory "~/Sync/Vaults/Main/org")

;; Graph view of the roam notes; the PKMS devshell's `org-graph` launches it.
(use-package! org-roam-ui
  :after org-roam
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        ;; `org-roam-ui-open' opens the browser itself; leaving this on opens a second tab
        org-roam-ui-open-on-start nil))

;; Same keys, files and bodies as `org_capture_templates' in Vim-Cfg, so a capture lands in the
;; same place from either editor. %U (date + time): when a thought was recorded matters.
;; Relative targets resolve against `org-directory'.
(after! org
  (setq org-capture-templates
        '(("t" "Task" entry (file "inbox.org")
           "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:END:")
          ("n" "Note" entry (file "inbox.org")
           "* %?\n:PROPERTIES:\n:CREATED: %U\n:END:")
          ;; Interstitial log: one line whenever focus changes
          ("j" "Journal" entry (file+olp+datetree "journal.org")
           "* %U %?")
          ("r" "Reply to someone" entry (file "people.org")
           "* TODO Reply to %^{Who}%?\nDEADLINE: %^{Reply by}t\n:PROPERTIES:\n:CREATED: %U\n:END:")
          ;; Neovim can't clock in from a capture; there it's a manual <leader>Oxi
          ("c" "Clocked work" entry (file+olp+datetree "journal.org")
           "* STRT %^{Working on}\n:PROPERTIES:\n:CREATED: %U\n:END:\n%?"
           :clock-in t :clock-resume t))
        ;; Morning view, matching Neovim's "d": today, what's in progress, what's blocked
        org-agenda-custom-commands
        '(("d" "Daily"
           ((agenda "" ((org-agenda-span 'day) (org-agenda-overriding-header "Today")))
            (todo "STRT" ((org-agenda-overriding-header "In progress")))
            (todo "WAIT" ((org-agenda-overriding-header "Waiting on"))))))))

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading extenal *.el files relative to this one
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
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented

;; Set bash as the default shell for emacs commands
(setq shell-file-name (executable-find "bash"))