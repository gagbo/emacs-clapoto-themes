;;; clapoto-dark-theme.el --- Personal dark theme of gagbo -*- lexical-binding: t;no-byte-compile: t -*-

;; Author: Gerry Agbobada <git@gagbo.net>
;; URL: http://github.com/gagbo/emacs-clapoto-themes

;; Version: 0.0.1
;; Package-Requires: ((emacs "27.1") (autothemer "0.2"))

;;; Commentary:
;; A personal collection of hand-grown themes

;;; Code:

(require 'autothemer)

(require 'clapoto-themes)

(clapoto-themes-deftheme
 clapoto-dark
 "A dark yellowish on blue-green theme."

 ((((class color) (min-colors #xFFFFFF)) ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))    ; col 2 Xterm/256

  (clapoto-fg+2 "#FFF4D0" nil)
  (clapoto-fg+1 "#F1E5D7" nil)
  (clapoto-fg   "#FCEDDB" nil)
  (clapoto-fg-1 "#EEDFCF" nil)
  (clapoto-fg-2 "#D5CEAE" nil)

  (clapoto-bg+2   "#2D4328" nil)
  (clapoto-bg+1   "#2f2921" nil)
  (clapoto-bg     "#0C140A" nil)
  (clapoto-bg-alt "#141F12" nil)
  (clapoto-bg-1   "#030902" nil)
  (clapoto-bg-2   "#000000" nil)

  (clapoto-white "#FFFFFF" nil)
  (clapoto-black "#000000" nil)

  ;; Test contrast against bg and faded variant
  ;; OkHSV S=80 V=97
  (clapoto-red_int     "#F75743" nil)
  (clapoto-orange_int  "#F79742" nil)
  (clapoto-yellow_int  "#F7D044" nil)
  (clapoto-green_int   "#D5F64B" nil)
  (clapoto-aqua_int    "#47C1F7" nil)
  (clapoto-blue_int    "#356DF7" nil)
  (clapoto-purple_int  "#E25BF7" nil)
  (clapoto-magenta_int "#F7527F" nil)
  (clapoto-leaf_int    "#72F652" nil)
  (clapoto-brown_int   "#F7AB42" nil)

  ;; Test contrast against bg variant
  ;; OkHSV S=38 V=93
  (clapoto-red     "#EA9D8F" nil)       ; H = 30
  (clapoto-orange  "#EAB48A" nil)       ; H = 59
  (clapoto-yellow  "#EAD48B" nil)       ; H = 93
  (clapoto-green   "#D4EA92" nil)       ; H = 120
  (clapoto-aqua    "#8FCBEA" nil)       ; H = 231
  (clapoto-blue    "#8EADEA" nil)       ; H = 264
  (clapoto-purple  "#E1A6EA" nil)       ; H = 322
  (clapoto-magenta "#EA9AA9" nil)       ; H = 8
  (clapoto-leaf    "#A9EA9B" nil)       ; H = 140
  (clapoto-brown   "#EABE8A" nil)       ; H = 71

  ;; Test contrast against fg (and intense) variant
  ;; OkHSV S=80 V=20
  (clapoto-red_bg     "#330C07" nil)
  (clapoto-orange_bg  "#331B06" nil)
  (clapoto-yellow_bg  "#302706" nil)
  (clapoto-green_bg   "#272F07" nil)
  (clapoto-aqua_bg    "#072532" nil)
  (clapoto-blue_bg    "#051338" nil)
  (clapoto-purple_bg  "#2F0D34" nil)
  (clapoto-magenta_bg "#350B16" nil)
  (clapoto-leaf_bg    "#113009" nil)
  (clapoto-brown_bg   "#321F06" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-accent1_int clapoto-leaf_int)
  (clapoto-accent2_int clapoto-brown_int)
  (clapoto-accent3_int clapoto-aqua_int)
  (clapoto-accent4_int clapoto-green_int)
  (clapoto-accent5_int clapoto-blue_int)

  ;; Test contrast against bg variant
  (clapoto-accent1 clapoto-leaf)
  (clapoto-accent2 clapoto-brown)
  (clapoto-accent3 clapoto-aqua)
  (clapoto-accent4 clapoto-green)
  (clapoto-accent5 clapoto-blue)

  ;; Test contrast against fg (and bright) variant
  (clapoto-accent1_bg clapoto-leaf_bg)
  (clapoto-accent2_bg clapoto-brown_bg)
  (clapoto-accent3_bg clapoto-aqua_bg)
  (clapoto-accent4_bg clapoto-green_bg)
  (clapoto-accent5_bg clapoto-blue_bg)

  (clapoto-comments "#FCE8A9" nil)

  ;; Package specific colors
  (clapoto-delimiter-one clapoto-aqua)
  (clapoto-delimiter-two clapoto-magenta)
  (clapoto-delimiter-three clapoto-yellow)
  (clapoto-delimiter-four clapoto-blue))

 (custom-theme-set-variables 'clapoto-dark
                             `(ansi-color-names-vector
                               [,clapoto-bg-1
                                ,clapoto-red_bg
                                ,clapoto-green_bg
                                ,clapoto-yellow_bg
                                ,clapoto-blue_bg
                                ,clapoto-purple_bg
                                ,clapoto-aqua_bg
                                ,clapoto-fg-1])
                             `(pdf-view-midnight-colors '(,clapoto-fg . ,clapoto-bg))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'clapoto-dark)
;;; clapoto-dark-theme.el ends here
