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
  (clapoto-intense_red     "#E82222" nil)
  (clapoto-intense_orange  "#F79E6A" nil)
  (clapoto-intense_yellow  "#BEAC10" nil)
  (clapoto-intense_green   "#CBFC4B" nil)
  (clapoto-intense_aqua    "#A2F5FC" nil)
  (clapoto-intense_blue    "#6E96F4" nil)
  (clapoto-intense_purple  "#A869F2" nil)
  (clapoto-intense_magenta "#FABADB" nil)

  ;; Test contrast against bg variant
  (clapoto-neutral_red     "#E9B5BB" nil)
  (clapoto-neutral_orange  "#EAB98A" nil)
  (clapoto-neutral_yellow  "#CFC47A" nil)
  (clapoto-neutral_green   "#AFCD7A" nil)
  (clapoto-neutral_aqua    "#82CFD5" nil)
  (clapoto-neutral_blue    "#B8C1E2" nil)
  (clapoto-neutral_purple  "#DEB4E5" nil)
  (clapoto-neutral_magenta "#E8B3CF" nil)

  ;; Test contrast against fg (and intense) variant
  (clapoto-faded_red     "#351B21" nil)
  (clapoto-faded_orange  "#381C07" nil)
  (clapoto-faded_yellow  "#282300" nil)
  (clapoto-faded_green   "#1E2612" nil)
  (clapoto-faded_aqua    "#142627" nil)
  (clapoto-faded_blue    "#09224B" nil)
  (clapoto-faded_purple  "#350A59" nil)
  (clapoto-faded_magenta "#470731" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-intense_hue1 clapoto-intense_yellow)
  (clapoto-intense_hue2 clapoto-intense_green)
  (clapoto-intense_hue3 clapoto-intense_blue)
  (clapoto-intense_hue4 clapoto-intense_magenta)
  (clapoto-intense_hue5 clapoto-intense_orange)

  ;; Test contrast against bg variant
  (clapoto-neutral_hue1 clapoto-neutral_yellow)
  (clapoto-neutral_hue2 clapoto-neutral_green)
  (clapoto-neutral_hue3 clapoto-neutral_blue)
  (clapoto-neutral_hue4 clapoto-neutral_magenta)
  (clapoto-neutral_hue5 clapoto-neutral_orange)

  ;; Test contrast against fg (and bright) variant
  (clapoto-faded_hue1 clapoto-faded_yellow)
  (clapoto-faded_hue2 clapoto-faded_green)
  (clapoto-faded_hue3 clapoto-faded_blue)
  (clapoto-faded_hue4 clapoto-faded_magenta)
  (clapoto-faded_hue5 clapoto-faded_orange)

  (clapoto-comments clapoto-neutral_aqua)

  ;; Package specific colors
  (clapoto-delimiter-one   "#458588" nil)
  (clapoto-delimiter-two   "#b16286" nil)
  (clapoto-delimiter-three "#8ec07c" nil)
  (clapoto-delimiter-four  "#d65d0e" nil))

 (custom-theme-set-variables 'clapoto-dark
                             `(ansi-color-names-vector
                               [,clapoto-bg-1
                                ,clapoto-faded_red
                                ,clapoto-faded_green
                                ,clapoto-faded_yellow
                                ,clapoto-faded_blue
                                ,clapoto-faded_purple
                                ,clapoto-faded_aqua
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
