;;; clapoto-kanagawa-dark-theme.el --- Dark theme using kanagawa.nvim color palette -*- lexical-binding: t;no-byte-compile: t -*-

;; Author: Gerry Agbobada <git@gagbo.net>
;; URL: http://github.com/gagbo/emacs-clapoto-themes

;; Version: 0.0.1
;; Package-Requires: ((emacs "27.1") (autothemer "0.2"))

;;; Commentary:
;; Source: https://github.com/rebelot/kanagawa.nvim

;;; Code:

(require 'autothemer)

(require 'clapoto-themes)

(clapoto-themes-deftheme
 clapoto-kanagawa-dark
 "A dark theme inspired by https://github.com/rebelot/kanagawa.nvim and Hokusai's wave."

 ((((class color) (min-colors #xFFFFFF)) ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))    ; col 2 Xterm/256

  (clapoto-fg+2 "#f9f5d7" nil)
  (clapoto-fg+1 "#fbf1c7" nil)
  (clapoto-fg   "#DCD7BA" nil)
  (clapoto-fg-1 "#C8C093" nil)
  (clapoto-fg-2 "#54546D" nil)

  (clapoto-bg+2   "#363646" nil)
  (clapoto-bg+1   "#2A2A37" nil)
  (clapoto-bg     "#1F1F28" nil)
  (clapoto-bg-alt "#363646" nil)
  (clapoto-bg-1   "#16161D" nil)
  (clapoto-bg-2   "#16161D" nil)

  (clapoto-white "#FFFFFF" nil)
  (clapoto-black "#000000" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-red_int     "#E82424" nil)
  (clapoto-orange_int  "#FF9E3B" nil)
  (clapoto-yellow_int  "#DCA561" nil)
  (clapoto-green_int   "#76946A" nil)
  (clapoto-aqua_int    "#6A9589" nil)
  (clapoto-blue_int    "#7E9CD8" nil)
  (clapoto-purple_int  "#957FB8" nil)
  (clapoto-magenta_int "#D27E99" nil)

  ;; Test contrast against bg variant
  (clapoto-red     "#E46876" nil)
  (clapoto-orange  "#FFA066" nil)
  (clapoto-yellow  "#E6C384" nil)
  (clapoto-green   "#98BB6C" nil)
  (clapoto-aqua    "#7AA89F" nil)
  (clapoto-blue    "#658594" nil)
  (clapoto-purple  "#957FB8" nil)
  (clapoto-magenta "#D27E99" nil)

  ;; Test contrast against fg (and intense) variant
  (clapoto-red_bg     "#43242B" nil)
  (clapoto-orange_bg  "#43242B" nil)
  (clapoto-yellow_bg  "#49443C" nil)
  (clapoto-green_bg   "#2B3328" nil)
  (clapoto-aqua_bg    "#223249" nil)
  (clapoto-blue_bg    "#223249" nil)
  (clapoto-purple_bg  "#252535" nil)
  (clapoto-magenta_bg "#352535" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-accent1_int clapoto-purple_int)
  (clapoto-accent2_int clapoto-yellow_int)
  (clapoto-accent3_int clapoto-aqua_int)
  (clapoto-accent4_int clapoto-magenta_int)
  (clapoto-accent5_int clapoto-orange_int)

  ;; Test contrast against bg variant
  (clapoto-accent1 clapoto-purple)
  (clapoto-accent2 clapoto-yellow)
  (clapoto-accent3 clapoto-aqua)
  (clapoto-accent4 clapoto-magenta)
  (clapoto-accent5 clapoto-orange)

  ;; Test contrast against fg (and bright) variant
  (clapoto-accent1_bg clapoto-purple_bg)
  (clapoto-accent2_bg clapoto-yellow_bg)
  (clapoto-accent3_bg clapoto-aqua_bg)
  (clapoto-accent4_bg clapoto-magenta_bg)
  (clapoto-accent5_bg clapoto-orange_bg)

  (clapoto-comments clapoto-fg-2)

  ;; Package specific colors
  (clapoto-delimiter-one   "#458588" nil)
  (clapoto-delimiter-two   "#b16286" nil)
  (clapoto-delimiter-three "#8ec07c" nil)
  (clapoto-delimiter-four  "#d65d0e" nil))

 (custom-theme-set-variables 'clapoto-kanagawa-dark
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

(provide-theme 'clapoto-kanagawa-dark)
;;; clapoto-kanagawa-dark-theme.el ends here
