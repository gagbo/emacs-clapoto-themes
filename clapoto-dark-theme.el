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

  (clapoto-fg+2 "#FFFFE0" nil)
  (clapoto-fg+1 "#FEFEDF" nil)
  (clapoto-fg   "#FCFCDD" nil)
  (clapoto-fg-1 "#FCFBD2" nil)
  (clapoto-fg-2 "#A3A39B" nil)

  (clapoto-bg+2 "#2D4F56" nil)
  (clapoto-bg+1 "#1C261E" nil)
  (clapoto-bg   "#101D1F" nil)
  (clapoto-bg-1 "#0C120D" nil)
  (clapoto-bg-2 "#000000" nil)

  (clapoto-white "#FFFFFF" nil)
  (clapoto-black "#000000" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-red_int     "#E82222" nil)
  (clapoto-orange_int  "#F79E6A" nil)
  (clapoto-yellow_int  "#BEAC10" nil)
  (clapoto-green_int   "#CBFC4B" nil)
  (clapoto-aqua_int    "#A2F5FC" nil)
  (clapoto-blue_int    "#6E96F4" nil)
  (clapoto-purple_int  "#A869F2" nil)
  (clapoto-magenta_int "#FABADB" nil)

  ;; Test contrast against bg variant
  (clapoto-red     "#E9B5BB" nil)
  (clapoto-orange  "#EAB98A" nil)
  (clapoto-yellow  "#CFC47A" nil)
  (clapoto-green   "#AFCD7A" nil)
  (clapoto-aqua    "#82CFD5" nil)
  (clapoto-blue    "#B8C1E2" nil)
  (clapoto-purple  "#DEB4E5" nil)
  (clapoto-magenta "#E8B3CF" nil)

  ;; Test contrast against fg (and intense) variant
  (clapoto-red_bg     "#351B21" nil)
  (clapoto-orange_bg  "#381C07" nil)
  (clapoto-yellow_bg  "#282300" nil)
  (clapoto-green_bg   "#1E2612" nil)
  (clapoto-aqua_bg    "#142627" nil)
  (clapoto-blue_bg    "#09224B" nil)
  (clapoto-purple_bg  "#350A59" nil)
  (clapoto-magenta_bg "#470731" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-accent1_int clapoto-yellow_int)
  (clapoto-accent2_int clapoto-green_int)
  (clapoto-accent3_int clapoto-blue_int)
  (clapoto-accent4_int clapoto-magenta_int)
  (clapoto-accent5_int clapoto-orange_int)

  ;; Test contrast against bg variant
  (clapoto-accent1 clapoto-yellow)
  (clapoto-accent2 clapoto-green)
  (clapoto-accent3 clapoto-blue)
  (clapoto-accent4 clapoto-magenta)
  (clapoto-accent5 clapoto-orange)

  ;; Test contrast against fg (and bright) variant
  (clapoto-accent1_bg clapoto-yellow_bg)
  (clapoto-accent2_bg clapoto-green_bg)
  (clapoto-accent3_bg clapoto-blue_bg)
  (clapoto-accent4_bg clapoto-magenta_bg)
  (clapoto-accent5_bg clapoto-orange_bg)

  (clapoto-comments clapoto-aqua)

  ;; Package specific colors
  (clapoto-delimiter-one   "#458588" nil)
  (clapoto-delimiter-two   "#b16286" nil)
  (clapoto-delimiter-three "#8ec07c" nil)
  (clapoto-delimiter-four  "#d65d0e" nil))

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
