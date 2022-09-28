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

  (clapoto-fg+2 "#000000" nil)
  (clapoto-fg+1 "#00251B" nil)
  (clapoto-fg   "#1B3C13" nil)
  (clapoto-fg-1 "#2D4728" nil)
  (clapoto-fg-2 "#795C39" nil)

  (clapoto-bg+2 "#E4EEE2" nil)
  (clapoto-bg+1 "#F4F2EF" nil)
  (clapoto-bg   "#FCFDFF" nil)
  (clapoto-bg-1 "#F9F6F4" nil)
  (clapoto-bg-2 "#FFFDFB" nil)

  (clapoto-white "#FFFFFF" nil)
  (clapoto-black "#000000" nil)

  ;; Test contrast against bg and faded variant
  ;; OkHSV started with S=100 V=48
  (clapoto-red_int     "#790500" nil)
  (clapoto-orange_int  "#763E00" nil)
  (clapoto-yellow_int  "#735D00" nil)
  (clapoto-green_int   "#607200" nil)
  (clapoto-aqua-2_int  "#007364" nil)
  (clapoto-aqua-1_int  "#006B73" nil)
  (clapoto-aqua_int    "#005776" nil)
  (clapoto-blue_int    "#00197E" nil)
  (clapoto-purple_int  "#6A0078" nil)
  (clapoto-magenta_int "#790030" nil)

  (clapoto-leaf_int   "#227400" nil)
  (clapoto-brown_int  "#754900" nil)

  ;; Test contrast against bg variant
  ;; OkHSV S=85 V=36
  ;; H = 30
  (clapoto-red     "#5C160E" nil)
  ;; H = 59
  (clapoto-orange  "#59320D" nil)
  ;; H = 93
  (clapoto-yellow  "#56470E" nil)
  ;; H = 120
  (clapoto-green   "#48550F" nil)
  ;; H = 180
  (clapoto-aqua-2  "#10564B" nil)
  ;; H = 204
  (clapoto-aqua-1  "#0F5157" nil)
  ;; H = 231
  (clapoto-aqua    "#0F4359" nil)
  ;; H = 264
  (clapoto-blue    "#09215F" nil)
  ;; H = 322
  (clapoto-purple  "#52175B" nil)
  ;; H = 8
  (clapoto-magenta "#5B1429" nil)

  ;; H = 140
  (clapoto-leaf   "#215612" nil)
  ;; H = 71
  (clapoto-brown   "#58390D" nil)

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

  (clapoto-leaf_bg   "#CCF1C4" nil)
  (clapoto-brown_bg   "#F1D6B7" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-accent1_int clapoto-brown_int)
  (clapoto-accent2_int clapoto-green_int)
  (clapoto-accent3_int clapoto-aqua_int)
  (clapoto-accent4_int clapoto-green_int)
  (clapoto-accent5_int clapoto-blue_int)

  ;; Test contrast against bg variant
  (clapoto-accent1 clapoto-brown)
  (clapoto-accent2 clapoto-green)
  (clapoto-accent3 clapoto-aqua)
  (clapoto-accent4 clapoto-green)
  (clapoto-accent5 clapoto-blue)

  ;; Test contrast against fg (and bright) variant
  (clapoto-accent1_bg clapoto-brown_bg)
  (clapoto-accent2_bg clapoto-green_bg)
  (clapoto-accent3_bg clapoto-aqua_bg)
  (clapoto-accent4_bg clapoto-green_bg)
  (clapoto-accent5_bg clapoto-blue_bg)

  (clapoto-comments "#212121")

  ;; Package specific colors
  (clapoto-delimiter-one clapoto-aqua)
  (clapoto-delimiter-two clapoto-magenta)
  (clapoto-delimiter-three clapoto-yellow)
  (clapoto-delimiter-four clapoto-blue))

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
