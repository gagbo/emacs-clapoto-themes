;;; clapoto-light-theme.el --- Personal dark theme of gagbo -*- lexical-binding: t;no-byte-compile: t -*-

;; Author: Gerry Agbobada <git@gagbo.net>
;; URL: http://github.com/gagbo/emacs-clapoto-themes

;; Version: 0.0.1
;; Package-Requires: ((emacs "27.1") (ef-themes "0.6"))

;;; Commentary:
;; A personal collection of hand-grown themes

;;; Code:
(eval-and-compile
  (require 'ef-themes)

  (deftheme clapoto-light "Personal light theme forked from ef-day.")

  (defconst clapoto-light-palette
    '(;; Basic tones
      (bg-main     "#fff5ea")
      (fg-main     "#584141")
      (bg-dim      "#f3ebdc")
      (fg-dim      "#63728f")
      (bg-alt      "#e9e0d8")
      (fg-alt      "#8f5f4a")

      (bg-active   "#d9d0c8")
      (bg-inactive "#f9f1e8")

      ;; Basic hues for foreground values
      (red             "#ba2d2f")
      (red-warmer      "#ce3f00")
      (red-cooler      "#cf2f4f")
      (red-faint       "#b05350")
      (green           "#007a0a")
      (green-warmer    "#5a7400")
      (green-cooler    "#0f7f5f")
      (green-faint     "#61756c")
      (yellow          "#a45a22")
      (yellow-warmer   "#b75515")
      (yellow-cooler   "#aa4f30")
      (yellow-faint    "#9a625a")
      (blue            "#375cc6")
      (blue-warmer     "#5f5fdf")
      (blue-cooler     "#265fbf")
      (blue-faint      "#4a659f")
      (magenta         "#ca3e54")
      (magenta-warmer  "#cb2f80")
      (magenta-cooler  "#8448aa")
      (magenta-faint   "#a04450")
      (cyan            "#3f60af")
      (cyan-warmer     "#3f6faf")
      (cyan-cooler     "#0f7b8f")
      (cyan-faint      "#4f6f8f")

      ;; Basic hues for background values
      (bg-red      "#ff8f88")
      (bg-green    "#96df80")
      (bg-yellow   "#efbf00")
      (bg-blue     "#cfceff")
      (bg-magenta  "#df9fff")
      (bg-cyan     "#88cfd0")

      (bg-red-subtle      "#ffc6bf")
      (bg-green-subtle    "#c4f2af")
      (bg-yellow-subtle   "#f0f07f")
      (bg-blue-subtle     "#ccdfff")
      (bg-magenta-subtle  "#fad3ff")
      (bg-cyan-subtle     "#bfefff")

      ;; Diffs
      (bg-added          "#ccefcf")
      (bg-added-faint    "#e0f3e0")
      (bg-added-refine   "#bae0c0")

      (bg-changed        "#ffe5b9")
      (bg-changed-faint  "#ffefc5")
      (bg-changed-refine "#ffd09f")

      (bg-removed        "#ffd4d8")
      (bg-removed-faint  "#ffe3e3")
      (bg-removed-refine "#ffc0ca")

      ;; Graphs
      (red-graph-0-bg     "#ef7969")
      (red-graph-1-bg     "#ffaab4")
      (green-graph-0-bg   "#4faa09")
      (green-graph-1-bg   "#8fef00")
      (yellow-graph-0-bg  "#ffcf00")
      (yellow-graph-1-bg  "#f9ff00")
      (blue-graph-0-bg    "#7090ff")
      (blue-graph-1-bg    "#9fc6ff")
      (magenta-graph-0-bg "#e07fff")
      (magenta-graph-1-bg "#fad0ff")
      (cyan-graph-0-bg    "#70d3f0")
      (cyan-graph-1-bg    "#afefff")

      ;; Special hues
      (bg-mode-line  "#ffaf72") (fg-mode-line  "#542f38")
      (bg-accent     "#106246") (fg-accent     "#ffffff")
      (bg-completion "#ffd5d3")
      (bg-hover      "#b0e0df")
      (bg-hover-alt  "#febcaf")
      (bg-hl-line    "#f9e2b2")
      (bg-region     "#f0d2df")
      (bg-paren      "#8fcfdf")
      (bg-err        "#ffddee") ; check with err
      (bg-warning    "#ffe0aa") ; check with warning
      (bg-info       "#ddf5cc") ; check with info

      (border        "#cdc2bb")
      (cursor        "#cf1f00")
      (fg-intense    "#000000")

      (modeline-err     "#900000")
      (modeline-warning "#66008f")
      (modeline-info    "#1f409f")

      ;; Mappings
      (err red-warmer)
      (warning yellow-warmer)
      (info green)

      (link cyan-warmer)
      (link-alt green-warmer)
      (date cyan-cooler)
      (name yellow)
      (keybind red-warmer)
      (prompt yellow)

      (builtin red-cooler)
      (comment green-faint)
      (constant red-warmer)
      (fnname magenta)
      (keyword yellow)
      (preprocessor cyan-warmer)
      (docstring yellow-faint)
      (string green-warmer)
      (type green-cooler)
      (variable magenta-cooler)

      (rx-escape blue) ; compare with `string'
      (rx-construct magenta-warmer)

      (accent-0 red)
      (accent-1 green-cooler)
      (accent-2 yellow)
      (accent-3 magenta-warmer)

      (mail-0 red)
      (mail-1 green)
      (mail-2 yellow)
      (mail-3 green-cooler)
      (mail-4 yellow-cooler)
      (mail-5 blue)

      (rainbow-0 yellow)
      (rainbow-1 red)
      (rainbow-2 green-warmer)
      (rainbow-3 magenta-warmer)
      (rainbow-4 cyan)
      (rainbow-5 yellow-cooler)
      (rainbow-6 magenta-cooler)
      (rainbow-7 red-cooler)
      (rainbow-8 green-cooler))
    "The `clapoto-light' palette.")

  (ef-themes-theme clapoto-light clapoto-light-palette)

  (provide-theme 'clapoto-light))
;;; clapoto-light-theme.el ends here
