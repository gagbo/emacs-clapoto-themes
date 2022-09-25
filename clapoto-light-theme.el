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
 "A light sepia green-ish theme."

 ((((class color) (min-colors #xFFFFFF)) ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))    ; col 2 Xterm/256

  (clapoto-fg+2 "#000000" nil)
  (clapoto-fg+1 "#010303" nil)
  (clapoto-fg   "#050F0D" nil)
  (clapoto-fg-1 "#0C201D" nil)
  (clapoto-fg-2 "#18413B" nil)

  (clapoto-bg+2 "#F0F0DD" nil)
  (clapoto-bg+1 "#F3F3E3" nil)
  (clapoto-bg   "#F9F9F3" nil)
  (clapoto-bg-1 "#FCFDFA" nil)
  (clapoto-bg-2 "#FFFFFF" nil)

  (clapoto-white "#FFFFFF" nil)
  (clapoto-black "#000000" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-red_int     "#790032" nil)
  (clapoto-orange_int  "#5D2E00" nil)
  (clapoto-yellow_int  "#413C00" nil)
  (clapoto-green_int   "#2C4100" nil)
  (clapoto-aqua_int    "#004245" nil)
  (clapoto-blue_int    "#00387F" nil)
  (clapoto-purple_int  "#590095" nil)
  (clapoto-magenta_int "#740051" nil)

  ;; Test contrast against bg variant
  (clapoto-red     "#A31B16" nil)
  (clapoto-orange  "#9F3B16" nil)
  (clapoto-yellow  "#796F13" nil)
  (clapoto-green   "#018513" nil)
  (clapoto-aqua    "#6775CC" nil)
  (clapoto-blue    "#0C1E8A" nil)
  (clapoto-purple  "#CC659D" nil)
  (clapoto-magenta "#970855" nil)

  ;; Test contrast against fg (and intense) variant
  (clapoto-red_bg     "#E82222" nil)
  (clapoto-orange_bg  "#F79E6A" nil)
  (clapoto-yellow_bg  "#BEAC10" nil)
  (clapoto-green_bg   "#CBFC4B" nil)
  (clapoto-aqua_bg    "#A2F5FC" nil)
  (clapoto-blue_bg    "#6E96F4" nil)
  (clapoto-purple_bg  "#A869F2" nil)
  (clapoto-magenta_bg "#FABADB" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-accent1_int clapoto-aqua_int)
  (clapoto-accent2_int clapoto-blue_int)
  (clapoto-accent3_int clapoto-purple_int)
  (clapoto-accent4_int clapoto-magenta_int)
  (clapoto-accent5_int clapoto-orange_int)

  ;; Test contrast against bg variant
  (clapoto-accent1 clapoto-aqua)
  (clapoto-accent2 clapoto-blue)
  (clapoto-accent3 clapoto-purple)
  (clapoto-accent4 clapoto-magenta)
  (clapoto-accent5 clapoto-orange)

  ;; Test contrast against fg (and bright) variant
  (clapoto-accent1_bg clapoto-aqua_bg)
  (clapoto-accent2_bg clapoto-blue_bg)
  (clapoto-accent3_bg clapoto-purple_bg)
  (clapoto-accent4_bg clapoto-magenta_bg)
  (clapoto-accent5_bg clapoto-orange_bg)

  (clapoto-comments clapoto-green)

  ;; Package specific colors
  (clapoto-delimiter-one clapoto-aqua)
  (clapoto-delimiter-two clapoto-magenta)
  (clapoto-delimiter-three clapoto-blue)
  (clapoto-delimiter-four clapoto-orange))

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
