;;; clapoto-themes.el --- Gagbo personal themes -*- lexical-binding: t;no-byte-compile: t -*-

;; Author: Gerry Agbobada <git@gagbo.net>
;; URL: http://github.com/gagbo/emacs-clapoto-themes

;; Version: 0.0.1
;; Package-Requires: ((emacs "27.1") (autothemer "0.2"))

;;; Commentary:
;; A personal collection of hand-grown themes

;;; Code:

(require 'autothemer)

;;;; Palette colors
;;;;; "Background colors"
;; The background colours go either further from fg or closer to fg
;; - clapoto-bg-2 ; further from fg
;; - clapoto-bg-1
;; - clapoto-bg
;; - clapoto-bg+1
;; - clapoto-bg+2 ; closer to fg

;;;;; "Foreground colors"
;;
;; - clapoto-fg-2 ; closer to bg
;; - clapoto-fg-1
;; - clapoto-fg
;; - clapoto-fg+1
;; - clapoto-fg+2 ; further from bg

;;;;; "Foreground Accent colors"
;; We only keep 5 accent hues maximum, + basic colours
;; if we want to force those (for success/error/warning...)
;;
;; - clapoto-intense_hue1
;; - clapoto-intense_hue2
;; - clapoto-intense_hue3
;; - clapoto-intense_hue4
;; - clapoto-intense_hue5

;;;;; "Foreground small Accent colors"
;;
;; - clapoto-neutral_hue1
;; - clapoto-neutral_hue2
;; - clapoto-neutral_hue3
;; - clapoto-neutral_hue4
;; - clapoto-neutral_hue5

;;;;; "Background Accent colors"
;;
;; - clapoto-faded_hue1
;; - clapoto-faded_hue2
;; - clapoto-faded_hue3
;; - clapoto-faded_hue4
;; - clapoto-faded_hue5

;;;;; "Special"
;; - clapoto-comments
;; - clapoto-delimiter-one
;; - clapoto-delimiter-two
;; - clapoto-delimiter-three
;; - clapoto-delimiter-four

;;;;; All named colors
;;
;; - clapoto-intense_red
;; - clapoto-intense_orange
;; - clapoto-intense_yellow
;; - clapoto-intense_green
;; - clapoto-intense_aqua
;; - clapoto-intense_blue
;; - clapoto-intense_purple
;; - clapoto-intense_magenta
;;
;; - clapoto-neutral_red
;; - clapoto-neutral_orange
;; - clapoto-neutral_yellow
;; - clapoto-neutral_green
;; - clapoto-neutral_aqua
;; - clapoto-neutral_blue
;; - clapoto-neutral_purple
;; - clapoto-neutral_magenta
;;
;; - clapoto-faded_red
;; - clapoto-faded_orange
;; - clapoto-faded_yellow
;; - clapoto-faded_green
;; - clapoto-faded_aqua
;; - clapoto-faded_blue
;; - clapoto-faded_purple
;; - clapoto-faded_magenta

(defmacro clapoto-themes-deftheme (name description palette &rest body)
  "Helper macro to define a clapoto variant named NAME.

DESCRIPTION, PALETTE and BODY share their usage with `autothemer'."
  `(autothemer-deftheme ,name
                        ,description
                        ,palette

                        ((default             (:background clapoto-bg :foreground clapoto-fg))
                         (cursor              (:background clapoto-fg-1))
                         (mode-line           (:background clapoto-bg+2 :foreground clapoto-fg-1 :box nil))
                         (mode-line-inactive  (:background clapoto-bg+1 :foreground clapoto-fg-2 :box nil))
                         (fringe              (:background clapoto-bg))
                         (hl-line             (:background clapoto-bg-1))
                         (region              (:background clapoto-bg+2)) ;;selection
                         (secondary-selection (:background clapoto-bg+1))
                         (minibuffer-prompt   (:foreground clapoto-intense_hue1 :bold t))
                         (vertical-border     (:foreground clapoto-bg-1))
                         (internal-border     (:background clapoto-bg))
                         (window-divider      (:foreground clapoto-bg-1))
                         (link                (:foreground clapoto-neutral_hue5 :underline t))
                         (shadow              (:foreground clapoto-fg-2))

                         ;; Built-in syntax
                         (font-lock-builtin-face       (:foreground clapoto-neutral_hue1))
                         (font-lock-constant-face      (:foreground clapoto-neutral_hue1))
                         (font-lock-comment-face       (:foreground clapoto-comments))
                         (font-lock-function-name-face (:foreground clapoto-neutral_hue2))
                         (font-lock-keyword-face       (:foreground clapoto-neutral_hue1))
                         (font-lock-string-face        (:foreground clapoto-neutral_green))
                         (font-lock-variable-name-face (:foreground clapoto-neutral_hue2))
                         (font-lock-type-face          (:foreground clapoto-neutral_hue3))
                         (font-lock-warning-face       (:foreground clapoto-intense_orange :bold t))

                         ;; Basic faces
                         (error               (:foreground clapoto-intense_red :bold t))
                         (success             (:foreground clapoto-intense_green :bold t))
                         (warning             (:foreground clapoto-intense_orange :bold t))
                         (alert-low-face      (:foreground clapoto-intense_blue))
                         (trailing-whitespace (:background clapoto-intense_red))
                         (escape-glyph        (:foreground clapoto-intense_aqua))
                         (header-line         (:background clapoto-bg+1 :foreground clapoto-fg+1 :box nil :inherit nil))
                         (highlight           (:background clapoto-bg-1 :foreground clapoto-fg))
                         (homoglyph           (:foreground clapoto-intense_yellow))
                         (match               (:foreground clapoto-bg-1 :background clapoto-intense_blue))

                         ;; Customize faces
                         (widget-field        (:background clapoto-bg+1))
                         (custom-group-tag    (:foreground clapoto-intense_blue :weight 'bold))
                         (custom-variable-tag (:foreground clapoto-intense_blue :weight 'bold))

                         ;; Which-key
                         (which-key-command-description-face        (:inherit 'font-lock-function-name-face))
                         (which-key-group-description-face          (:inherit 'font-lock-keyword-face))
                         (which-key-highlighted-command-face        (:underline t :inherit 'which-key-command-description-face))
                         (which-key-key-face                        (:inherit 'font-lock-constant-face))
                         (which-key-local-map-description-face      (:inherit 'which-key-command-description-face))
                         (which-key-note-face                       (:inherit 'which-key-separator-face))
                         (which-key-separator-face                  (:inherit 'font-lock-comment-face))
                         (which-key-special-key-face                (:weight 'bold :inverse-video t :inherit 'which-key-key-face))

                         ;; whitespace-mode
                         (whitespace-space            (:background clapoto-bg :foreground clapoto-bg+1))
                         (whitespace-hspace           (:background clapoto-bg :foreground clapoto-bg+1))
                         (whitespace-tab              (:background clapoto-bg :foreground clapoto-bg+1))
                         (whitespace-newline          (:background clapoto-bg :foreground clapoto-bg+1))
                         (whitespace-trailing         (:background clapoto-bg-1 :foreground clapoto-intense_red))
                         (whitespace-line             (:background clapoto-bg-1 :foreground clapoto-intense_red))
                         (whitespace-space-before-tab (:background clapoto-bg :foreground clapoto-bg+1))
                         (whitespace-indentation      (:background clapoto-bg :foreground clapoto-bg+1))
                         (whitespace-empty            (:background nil :foreground nil))
                         (whitespace-space-after-tab  (:background clapoto-bg :foreground clapoto-bg+1))

                         ;; RainbowDelimiters
                         (rainbow-delimiters-depth-1-face   (:foreground clapoto-delimiter-one))
                         (rainbow-delimiters-depth-2-face   (:foreground clapoto-delimiter-two))
                         (rainbow-delimiters-depth-3-face   (:foreground clapoto-delimiter-three))
                         (rainbow-delimiters-depth-4-face   (:foreground clapoto-delimiter-four))
                         (rainbow-delimiters-depth-5-face   (:foreground clapoto-delimiter-one))
                         (rainbow-delimiters-depth-6-face   (:foreground clapoto-delimiter-two))
                         (rainbow-delimiters-depth-7-face   (:foreground clapoto-delimiter-three))
                         (rainbow-delimiters-depth-8-face   (:foreground clapoto-delimiter-four))
                         (rainbow-delimiters-depth-9-face   (:foreground clapoto-delimiter-one))
                         (rainbow-delimiters-depth-10-face  (:foreground clapoto-delimiter-two))
                         (rainbow-delimiters-depth-11-face  (:foreground clapoto-delimiter-three))
                         (rainbow-delimiters-depth-12-face  (:foreground clapoto-delimiter-four))

                         ;; Telephone line
                         (telephone-line-evil
                          (:weight 'bold :foreground clapoto-bg+1 :inherit 'mode-line))
                         (telephone-line-evil-emacs
                          (:background clapoto-neutral_purple :inherit 'telephone-line-evil))
                         (telephone-line-evil-insert
                          (:background clapoto-neutral_green :inherit 'telephone-line-evil))
                         (telephone-line-evil-motion
                          (:background clapoto-neutral_blue :inherit 'telephone-line-evil))
                         (telephone-line-evil-normal
                          (:background clapoto-neutral_red :inherit 'telephone-line-evil))
                         (telephone-line-evil-visual
                          (:background clapoto-neutral_orange :inherit 'telephone-line-evil))
                         (telephone-line-evil-operator
                          (:background clapoto-neutral_magenta :inherit 'telephone-line-evil))
                         (telephone-line-evil-god
                          (:background clapoto-neutral_aqua :inherit 'telephone-line-evil)))

                        ,@body))

(provide 'clapoto-themes)
;;; clapoto-themes.el ends here.
