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

  (clapoto-bg+2 "#363646" nil)
  (clapoto-bg+1 "#2A2A37" nil)
  (clapoto-bg   "#1F1F28" nil)
  (clapoto-bg-1 "#16161D" nil)
  (clapoto-bg-2 "#16161D" nil)

  (clapoto-white "#FFFFFF" nil)
  (clapoto-black "#000000" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-intense_red     "#E82424" nil)
  (clapoto-intense_orange  "#FF9E3B" nil)
  (clapoto-intense_yellow  "#DCA561" nil)
  (clapoto-intense_green   "#76946A" nil)
  (clapoto-intense_aqua    "#6A9589" nil)
  (clapoto-intense_blue    "#7E9CD8" nil)
  (clapoto-intense_purple  "#957FB8" nil)
  (clapoto-intense_magenta "#D27E99" nil)

  ;; Test contrast against bg variant
  (clapoto-neutral_red     "#E46876" nil)
  (clapoto-neutral_orange  "#FFA066" nil)
  (clapoto-neutral_yellow  "#E6C384" nil)
  (clapoto-neutral_green   "#98BB6C" nil)
  (clapoto-neutral_aqua    "#7AA89F" nil)
  (clapoto-neutral_blue    "#658594" nil)
  (clapoto-neutral_purple  "#957FB8" nil)
  (clapoto-neutral_magenta "#D27E99" nil)

  ;; Test contrast against fg (and intense) variant
  (clapoto-faded_red     "#43242B" nil)
  (clapoto-faded_orange  "#43242B" nil)
  (clapoto-faded_yellow  "#49443C" nil)
  (clapoto-faded_green   "#2B3328" nil)
  (clapoto-faded_aqua    "#223249" nil)
  (clapoto-faded_blue    "#223249" nil)
  (clapoto-faded_purple  "#252535" nil)
  (clapoto-faded_magenta "#352535" nil)

  ;; Test contrast against bg and faded variant
  (clapoto-intense_hue1 clapoto-intense_purple)
  (clapoto-intense_hue2 clapoto-intense_yellow)
  (clapoto-intense_hue3 clapoto-intense_aqua)
  (clapoto-intense_hue4 clapoto-intense_magenta)
  (clapoto-intense_hue5 clapoto-intense_orange)

  ;; Test contrast against bg variant
  (clapoto-neutral_hue1 clapoto-neutral_purple)
  (clapoto-neutral_hue2 clapoto-neutral_yellow)
  (clapoto-neutral_hue3 clapoto-neutral_aqua)
  (clapoto-neutral_hue4 clapoto-neutral_magenta)
  (clapoto-neutral_hue5 clapoto-neutral_orange)

  ;; Test contrast against fg (and bright) variant
  (clapoto-faded_hue1 clapoto-faded_purple)
  (clapoto-faded_hue2 clapoto-faded_yellow)
  (clapoto-faded_hue3 clapoto-faded_aqua)
  (clapoto-faded_hue4 clapoto-faded_magenta)
  (clapoto-faded_hue5 clapoto-faded_orange)

  (clapoto-comments clapoto-neutral_fg-2)

  ;; Package specific colors
  (clapoto-delimiter-one   "#458588" nil)
  (clapoto-delimiter-two   "#b16286" nil)
  (clapoto-delimiter-three "#8ec07c" nil)
  (clapoto-delimiter-four  "#d65d0e" nil))

 (custom-theme-set-variables 'clapoto-kanagawa-dark
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

(provide-theme 'clapoto-kanagawa-dark)
;;; clapoto-kanagawa-dark-theme.el ends here
