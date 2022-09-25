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
  (clapoto-intense_red     "#351B21" nil)
  (clapoto-intense_orange  "#381C07" nil)
  (clapoto-intense_yellow  "#282300" nil)
  (clapoto-intense_green   "#1E2612" nil)
  (clapoto-intense_aqua    "#142627" nil)
  (clapoto-intense_blue    "#09224B" nil)
  (clapoto-intense_purple  "#350A59" nil)
  (clapoto-intense_magenta "#470731" nil)

  ;; Test contrast against bg variant
  (clapoto-neutral_red     "#A31B16" nil)
  (clapoto-neutral_orange  "#9F3B16" nil)
  (clapoto-neutral_yellow  "#796F13" nil)
  (clapoto-neutral_green   "#018513" nil)
  (clapoto-neutral_aqua    "#6775CC" nil)
  (clapoto-neutral_blue    "#0C1E8A" nil)
  (clapoto-neutral_purple  "#CC659D" nil)
  (clapoto-neutral_magenta "#970855" nil)

  ;; Test contrast against fg (and intense) variant
  (clapoto-faded_red     "#E82222" nil)
  (clapoto-faded_orange  "#F79E6A" nil)
  (clapoto-faded_yellow  "#BEAC10" nil)
  (clapoto-faded_green   "#CBFC4B" nil)
  (clapoto-faded_aqua    "#A2F5FC" nil)
  (clapoto-faded_blue    "#6E96F4" nil)
  (clapoto-faded_purple  "#A869F2" nil)
  (clapoto-faded_magenta "#FABADB" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-intense_hue1 clapoto-intense_aqua)
  (clapoto-intense_hue2 clapoto-intense_blue)
  (clapoto-intense_hue3 clapoto-intense_purple)
  (clapoto-intense_hue4 clapoto-intense_magenta)
  (clapoto-intense_hue5 clapoto-intense_orange)

  ;; Test contrast against bg variant
  (clapoto-neutral_hue1 clapoto-neutral_aqua)
  (clapoto-neutral_hue2 clapoto-neutral_blue)
  (clapoto-neutral_hue3 clapoto-neutral_purple)
  (clapoto-neutral_hue4 clapoto-neutral_magenta)
  (clapoto-neutral_hue5 clapoto-neutral_orange)

  ;; Test contrast against fg (and bright) variant
  (clapoto-faded_hue1 clapoto-faded_aqua)
  (clapoto-faded_hue2 clapoto-faded_blue)
  (clapoto-faded_hue3 clapoto-faded_purple)
  (clapoto-faded_hue4 clapoto-faded_magenta)
  (clapoto-faded_hue5 clapoto-faded_orange)

  (clapoto-comments clapoto-neutral_green)

  ;; Package specific colors
  (clapoto-delimiter-one clapoto-neutral_aqua)
  (clapoto-delimiter-two clapoto-neutral_magenta)
  (clapoto-delimiter-three clapoto-neutral_blue)
  (clapoto-delimiter-four clapoto-neutral_orange))

 (custom-theme-set-variables 'clapoto-light
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

(provide-theme 'clapoto-light)
;;; clapoto-light-theme.el ends here
