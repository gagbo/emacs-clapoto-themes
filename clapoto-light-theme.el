;;; clapoto-light-theme.el --- Personal dark theme of gagbo -*- lexical-binding: t;no-byte-compile: t -*-

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
 clapoto-light
 "A light cold nature focused theme."

 ((((class color) (min-colors #xFFFFFF)) ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))    ; col 2 Xterm/256

  (clapoto-fg-2 "#795C39" nil)
  (clapoto-fg-1 "#2D4728" nil)
  (clapoto-fg   "#0E4100" nil)
  (clapoto-fg+1 "#042200" nil)
  (clapoto-fg+2 "#000000" nil)

  (clapoto-bg+2   "#E4EEE2" nil)
  (clapoto-bg+1   "#F4F2EF" nil)
  (clapoto-bg     "#FCFDFF" nil)
  (clapoto-bg-alt "#F9F6F4" nil)
  (clapoto-bg-1   "#FDFEFF" nil)
  (clapoto-bg-2   "#FFFFFF" nil)

  (clapoto-white "#FFFFFF" nil)
  (clapoto-black "#000000" nil)

  ;; Test contrast against bg and faded variant
  ;; OkHSV started with S=100 V=50
  (clapoto-red_int     "#7F0500" nil)
  (clapoto-orange_int  "#7C4200" nil)
  (clapoto-yellow_int  "#796200" nil)
  (clapoto-green_int   "#657800" nil)
  (clapoto-aqua-2_int  "#007969" nil)
  (clapoto-aqua-1_int  "#007179" nil)
  (clapoto-aqua_int    "#005B7B" nil)
  (clapoto-blue_int    "#001B83" nil)
  (clapoto-purple_int  "#6F007E" nil)
  (clapoto-magenta_int "#7F0033" nil)

  (clapoto-leaf-1_int   "#00794E" nil)
  (clapoto-leaf_int   "#227900" nil)
  (clapoto-brown_int  "#754900" nil)

  ;; Test contrast against bg variant
  ;; OkHSV S=90 V=40
  (clapoto-red     "#66140B" nil)       ; H = 30
  (clapoto-orange  "#63360B" nil)       ; H = 59
  (clapoto-yellow  "#604F0B" nil)       ; H = 93
  (clapoto-green   "#505F0D" nil)       ; H = 120
  (clapoto-aqua-2  "#0D6054" nil)       ; H = 180
  (clapoto-aqua-1  "#0C5A60" nil)       ; H = 204
  (clapoto-aqua    "#0C4A63" nil)       ; H = 231
  (clapoto-blue    "#06206A" nil)       ; H = 264
  (clapoto-purple  "#5A1465" nil)       ; H = 322
  (clapoto-magenta "#65112C" nil)       ; H = 8

  ;; H = 160
  (clapoto-leaf-1   "#0F603F" nil)
  ;; H = 140
  (clapoto-leaf   "#21600F" nil)
  ;; H = 71
  (clapoto-brown   "#623F0B" nil)

  ;; Test contrast against fg (and intense) variant
  ;; OkHSV S=20 V=95
  (clapoto-red_bg     "#F1C4BC" nil)
  (clapoto-orange_bg  "#F1D0B8" nil)
  (clapoto-yellow_bg  "#F1E3B8" nil)
  (clapoto-green_bg   "#E3F1BC" nil)
  (clapoto-aqua-2_bg  "#BBF1E5" nil)
  (clapoto-aqua-1_bg  "#B9ECF1" nil)
  (clapoto-aqua_bg    "#BADEF1" nil)
  (clapoto-blue_bg    "#BECFF1" nil)
  (clapoto-purple_bg  "#ECCCF1" nil)
  (clapoto-magenta_bg "#F1C3CA" nil)

  (clapoto-leaf-1_bg   "#C0F1D5" nil)
  (clapoto-leaf_bg   "#CCF1C4" nil)
  (clapoto-brown_bg   "#F1D6B7" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-accent1_int clapoto-leaf_int)
  (clapoto-accent2_int clapoto-green_int)
  (clapoto-accent3_int clapoto-leaf-1_int)
  (clapoto-accent4_int clapoto-aqua-2_int)
  (clapoto-accent5_int clapoto-brown_int)

  ;; Test contrast against bg variant
  (clapoto-accent1 clapoto-leaf)
  (clapoto-accent2 clapoto-green)
  (clapoto-accent3 clapoto-leaf-1)
  (clapoto-accent4 clapoto-aqua)
  (clapoto-accent5 clapoto-brown)

  ;; Test contrast against fg (and bright) variant
  (clapoto-accent1_bg clapoto-leaf_bg)
  (clapoto-accent2_bg clapoto-green_bg)
  (clapoto-accent3_bg clapoto-leaf-1_bg)
  (clapoto-accent4_bg clapoto-aqua_bg)
  (clapoto-accent5_bg clapoto-brown_bg)

  (clapoto-comments clapoto-brown_int)

  ;; Package specific colors
  (clapoto-delimiter-one clapoto-aqua)
  (clapoto-delimiter-two clapoto-brown)
  (clapoto-delimiter-three clapoto-leaf)
  (clapoto-delimiter-four clapoto-green))

 (custom-theme-set-variables 'clapoto-light
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

(provide-theme 'clapoto-light)
;;; clapoto-light-theme.el ends here
