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
      (bg-main     "#f7fff9")
      (fg-main     "#242f21")
      (bg-dim      "#e6f6e8")
      (fg-dim      "#6e8e67")
      (bg-alt      "#e4eee1")
      (fg-alt      "#7e8d4d")

      (bg-active   "#c8d6d9")
      (bg-inactive "#E9F6F9")

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
      (bg-mode-line  "#c3ff7f") (fg-mode-line  "#3a4633")
      (bg-accent     "#106246") (fg-accent     "#ffffff")
      (bg-completion "#d7ffdd")
      (bg-hover      "#b0e0df")
      (bg-hover-alt  "#b6fed7")
      (bg-hl-line    "#ccf9d4")
      (bg-region     "#def0ce")
      (bg-paren      "#8fcfdf")
      (bg-err        "#ffddee")         ; check with err
      (bg-warning    "#ffe0aa")         ; check with warning
      (bg-info       "#ddf5cc")         ; check with info

      (border        "#c0cdc0")
      (cursor        "#114800")
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

      (builtin blue-cooler)
      (comment green-faint)
      (constant blue-warmer)
      (fnname cyan)
      (keyword green-cooler)
      (preprocessor cyan-warmer)
      (docstring yellow-faint)
      (string blue-warmer)
      (type green-cooler)
      (variable cyan-cooler)

      (rx-escape red)                   ; compare with `string'
      (rx-construct magenta-warmer)

      (accent-0 blue)
      (accent-1 green-cooler)
      (accent-2 yellow)
      (accent-3 magenta-warmer)

      (mail-0 blue)
      (mail-1 green)
      (mail-2 yellow)
      (mail-3 green-cooler)
      (mail-4 yellow-cooler)
      (mail-5 red)

      (rainbow-0 cyan)
      (rainbow-1 green)
      (rainbow-2 green-warmer)
      (rainbow-3 blue-warmer)
      (rainbow-4 cyan-cooler)
      (rainbow-5 magenta-cooler)
      (rainbow-6 green-cooler)
      (rainbow-7 blue-cooler)
      (rainbow-8 magenta))
    "The `clapoto-light' palette.")

  (ef-themes-theme clapoto-light clapoto-light-palette)

  (provide-theme 'clapoto-light))
;;; clapoto-light-theme.el ends here
