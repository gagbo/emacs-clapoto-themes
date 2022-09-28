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
  (clapoto-fg   "#003C2B" nil)
  (clapoto-fg-1 "#00563F" nil)
  (clapoto-fg-2 "#4d9278" nil)

  (clapoto-bg+2 "#EEE5DE" nil)
  (clapoto-bg+1 "#F2F4F0" nil)
  (clapoto-bg   "#FCFDFF" nil)
  (clapoto-bg-1 "#F9F6F4" nil)
  (clapoto-bg-2 "#FFFDFB" nil)

  (clapoto-white "#FFFFFF" nil)
  (clapoto-black "#000000" nil)

  ;; Test contrast against bg and faded variant
  ;; OkHSV started with S=100 V=60
  (clapoto-red_int     "#970800" nil)
  (clapoto-orange_int  "#955000" nil)
  (clapoto-yellow_int  "#927700" nil)
  (clapoto-green_int   "#7B9200" nil)
  (clapoto-aqua-2_int  "#009280" nil)
  (clapoto-aqua-1_int  "#008293" nil)
  (clapoto-aqua_int    "#006F95" nil)
  (clapoto-blue_int    "#01219B" nil)
  (clapoto-purple_int  "#850097" nil)
  (clapoto-magenta_int "#97003E" nil)

  (clapoto-brown_int  "#945E00" nil)

  ;; Test contrast against bg variant
  ;; OkHSV S=100 V=36
  ;; H = 30
  (clapoto-red     "#5D0400" nil)
  ;; H = 59
  (clapoto-orange  "#5A2E00" nil)
  ;; H = 93
  (clapoto-yellow  "#564600" nil)
  ;; H = 120
  (clapoto-green   "#475500" nil)
  ;; H = 180
  (clapoto-aqua-2  "#00564B" nil)
  ;; H = 211
  (clapoto-aqua-1  "#004D57" nil)
  ;; H = 231
  (clapoto-aqua    "#004159" nil)
  ;; H = 264
  (clapoto-blue    "#001162" nil)
  ;; H = 322
  (clapoto-purple  "#50005C" nil)
  ;; H = 8
  (clapoto-magenta "#CF1259" nil)

  ;; H = 71
  (clapoto-brown   "#583700" nil)

  ;; Test contrast against fg (and intense) variant
  ;; OkHSV S=20 V=95
  (clapoto-red_bg     "#F1C4BC" nil)
  (clapoto-orange_bg  "#F1D0B8" nil)
  (clapoto-yellow_bg  "#F1E3B8" nil)
  (clapoto-green_bg   "#E3F1BC" nil)
  (clapoto-aqua-2_bg  "#BBF1E5" nil)
  (clapoto-aqua-1_bg  "#B9E8F1" nil)
  (clapoto-aqua_bg    "#BADEF1" nil)
  (clapoto-blue_bg    "#BECFF1" nil)
  (clapoto-purple_bg  "#ECCCF1" nil)
  (clapoto-magenta_bg "#F1C3CA" nil)

  (clapoto-brown_bg   "#F1D6B7" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-accent1_int clapoto-brown_int)
  (clapoto-accent2_int clapoto-aqua_int)
  (clapoto-accent3_int clapoto-aqua-1_int)
  (clapoto-accent4_int clapoto-aqua-2_int)
  (clapoto-accent5_int clapoto-blue_int)

  ;; Test contrast against bg variant
  (clapoto-accent1 clapoto-brown)
  (clapoto-accent2 clapoto-aqua)
  (clapoto-accent3 clapoto-aqua-1)
  (clapoto-accent4 clapoto-aqua-2)
  (clapoto-accent5 clapoto-blue)

  ;; Test contrast against fg (and bright) variant
  (clapoto-accent1_bg clapoto-brown_bg)
  (clapoto-accent2_bg clapoto-aqua_bg)
  (clapoto-accent3_bg clapoto-aqua-1_bg)
  (clapoto-accent4_bg clapoto-aqua-2_bg)
  (clapoto-accent5_bg clapoto-blue_bg)

  (clapoto-comments clapoto-green_int)

  ;; Package specific colors
  (clapoto-delimiter-one clapoto-aqua)
  (clapoto-delimiter-two clapoto-magenta)
  (clapoto-delimiter-three clapoto-blue)
  (clapoto-delimiter-four clapoto-purple))

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
