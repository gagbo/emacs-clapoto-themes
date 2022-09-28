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
;; - clapoto-accent1_int
;; - clapoto-accent2_int
;; - clapoto-accent3_int
;; - clapoto-accent4_int
;; - clapoto-accent5_int

;;;;; "Foreground small Accent colors"
;;
;; - clapoto-accent1
;; - clapoto-accent2
;; - clapoto-accent3
;; - clapoto-accent4
;; - clapoto-accent5

;;;;; "Background Accent colors"
;;
;; - clapoto-accent1_bg
;; - clapoto-accent2_bg
;; - clapoto-accent3_bg
;; - clapoto-accent4_bg
;; - clapoto-accent5_bg

;;;;; "Special"
;; - clapoto-comments
;; - clapoto-delimiter-one
;; - clapoto-delimiter-two
;; - clapoto-delimiter-three
;; - clapoto-delimiter-four

;;;;; All named colors
;;
;; - clapoto-red_int
;; - clapoto-orange_int
;; - clapoto-yellow_int
;; - clapoto-green_int
;; - clapoto-aqua_int
;; - clapoto-blue_int
;; - clapoto-purple_int
;; - clapoto-magenta_int
;;
;; - clapoto-red
;; - clapoto-orange
;; - clapoto-yellow
;; - clapoto-green
;; - clapoto-aqua
;; - clapoto-blue
;; - clapoto-purple
;; - clapoto-magenta
;;
;; - clapoto-red_bg
;; - clapoto-orange_bg
;; - clapoto-yellow_bg
;; - clapoto-green_bg
;; - clapoto-aqua_bg
;; - clapoto-blue_bg
;; - clapoto-purple_bg
;; - clapoto-magenta_bg

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
                         (minibuffer-prompt   (:foreground clapoto-accent5_int :bold t))
                         (vertical-border     (:foreground clapoto-bg-1))
                         (internal-border     (:background clapoto-bg))
                         (window-divider      (:foreground clapoto-bg-1))
                         (link                (:foreground clapoto-accent4 :underline t))
                         (shadow              (:foreground clapoto-fg-2))

                         ;; Built-in syntax
                         (font-lock-builtin-face       (:foreground clapoto-accent1))
                         (font-lock-constant-face      (:foreground clapoto-accent1))
                         (font-lock-comment-face       (:foreground clapoto-comments))
                         (font-lock-function-name-face (:foreground clapoto-accent2))
                         (font-lock-keyword-face       (:foreground clapoto-accent1))
                         (font-lock-string-face        (:foreground clapoto-green))
                         (font-lock-variable-name-face (:foreground clapoto-accent2))
                         (font-lock-type-face          (:foreground clapoto-accent3))
                         (font-lock-warning-face       (:foreground clapoto-orange_int :bold t))

                         ;; Basic faces
                         (error               (:foreground clapoto-red_int :bold t))
                         (success             (:foreground clapoto-green_int :bold t))
                         (warning             (:foreground clapoto-orange_int :bold t))
                         (alert-low-face      (:foreground clapoto-blue_int))
                         (trailing-whitespace (:background clapoto-red_int))
                         (escape-glyph        (:foreground clapoto-aqua_int))
                         (header-line         (:background clapoto-bg+1 :foreground clapoto-fg+1 :box nil :inherit nil))
                         (highlight           (:background clapoto-bg-1 :foreground clapoto-fg))
                         (homoglyph           (:foreground clapoto-yellow_int))
                         (match               (:foreground clapoto-bg-1 :background clapoto-blue_int))

                         ;; Customize faces
                         (widget-field        (:background clapoto-bg+1))
                         (custom-group-tag    (:foreground clapoto-blue_int :weight 'bold))
                         (custom-variable-tag (:foreground clapoto-blue_int :weight 'bold))

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
                         (whitespace-trailing         (:background clapoto-bg-1 :foreground clapoto-red_int))
                         (whitespace-line             (:background clapoto-bg-1 :foreground clapoto-red_int))
                         (whitespace-space-before-tab (:background clapoto-bg :foreground clapoto-bg+1))
                         (whitespace-indentation      (:background clapoto-bg :foreground clapoto-bg+1))
                         (whitespace-empty            (:background nil :foreground nil))
                         (whitespace-space-after-tab  (:background clapoto-bg :foreground clapoto-bg+1))

                         ;; Magit
                         (magit-hash (:background clapoto-accent4_bg :foreground clapoto-accent4))
                         (magit-section-highlight (:background clapoto-bg-1))

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
                          (:background clapoto-purple :inherit 'telephone-line-evil))
                         (telephone-line-evil-insert
                          (:background clapoto-green :inherit 'telephone-line-evil))
                         (telephone-line-evil-motion
                          (:background clapoto-blue :inherit 'telephone-line-evil))
                         (telephone-line-evil-normal
                          (:background clapoto-red :inherit 'telephone-line-evil))
                         (telephone-line-evil-visual
                          (:background clapoto-orange :inherit 'telephone-line-evil))
                         (telephone-line-evil-operator
                          (:background clapoto-magenta :inherit 'telephone-line-evil))
                         (telephone-line-evil-god
                          (:background clapoto-aqua :inherit 'telephone-line-evil)))

                        ,@body))

(provide 'clapoto-themes)
;;; clapoto-themes.el ends here.
