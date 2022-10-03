;;; clapoto-themes.el --- Gagbo personal themes -*- lexical-binding: t;no-byte-compile: t -*-

;; Author: Gerry Agbobada <git@gagbo.net>
;; URL: http://github.com/gagbo/emacs-clapoto-themes

;; Version: 0.0.1
;; Package-Requires: ((emacs "27.1") (ef-themes "0.6"))

;;; Commentary:
;; A personal collection of hand-grown themes

;;; Code:


;; Helpers
(defun clapoto-themes--list-enabled-themes ()
  "Return list of `custom-enabled-themes' with clapoto- prefix."
  (seq-filter
   (lambda (theme)
     (string-prefix-p "clapoto-" (symbol-name theme)))
   custom-enabled-themes))

(defun clapoto-themes--current-theme ()
  "Return first enabled Clapoto theme."
  (car (clapoto-themes--list-enabled-themes)))

(defun clapoto-themes--palette (theme)
  "Return THEME palette as a symbol."
  (when theme
    (intern (format "%s-palette" theme))))

(defun clapoto-themes--current-theme-palette ()
  "Return palette of active Clapoto theme, else produce `user-error'."
  (if-let* ((palette (clapoto-themes--palette (clapoto-themes--current-theme))))
      (symbol-value palette)
    (user-error "No enabled Clapoto theme could be found")))

(defmacro clapoto-themes-with-colors (&rest body)
  "Evaluate BODY with colors from current palette bound."
  (declare (indent 0))
  (let* ((sym (gensym))
         (colors (mapcar #'car (clapoto-themes--current-theme-palette))))
    `(let* ((c '((class color) (min-colors 256)))
            (,sym (clapoto-themes--current-theme-palette))
            ,@(mapcar (lambda (color)
                        (list color
                              `(let* ((value (car (alist-get ',color ,sym))))
                                 (if (stringp value)
                                     value
                                   (car (alist-get value ,sym))))))
                      colors))
       (ignore c ,@colors)
       ,@body)))

(defvar clapoto-themes-post-load-hook nil
  "Normal hook run after enabling a Clapoto theme.")

(defun clapoto-themes-run-after-enable-theme-hook (&rest _args)
  "Run `after-enable-theme-hook'."
  (run-hooks 'clapoto-themes-post-load-hook))

(advice-add 'enable-theme :after #'clapoto-themes-run-after-enable-theme-hook)

;; Extra faces from basic inherited ef-themes
(defun clapoto-themes-hl-todo-faces ()
  "Configure `hl-todo-keyword-faces' with Clapoto themes colors.
The exact color values are taken from the active Clapoto theme."
  (clapoto-themes-with-colors
    (setq hl-todo-keyword-faces
          `(("HOLD" . ,yellow)
            ("TODO" . ,red)
            ("NEXT" . ,blue)
            ("THEM" . ,magenta)
            ("PROG" . ,cyan-warmer)
            ("OKAY" . ,green-warmer)
            ("DONT" . ,yellow-warmer)
            ("FAIL" . ,red-warmer)
            ("BUG" . ,red-warmer)
            ("DONE" . ,green)
            ("NOTE" . ,blue-warmer)
            ("KLUDGE" . ,cyan)
            ("HACK" . ,cyan)
            ("TEMP" . ,red)
            ("FIXME" . ,red-warmer)
            ("XXX+" . ,red-warmer)
            ("REVIEW" . ,red)
            ("DEPRECATED" . ,yellow)))))

(add-hook 'clapoto-themes-post-load-hook #'clapoto-themes-hl-todo-faces)

(defun clapoto-themes-custom-faces ()
  "My customizations on top of the Clapoto themes.
This function is added to the `clapoto-themes-post-load-hook'."
  (clapoto-themes-with-colors
    (custom-set-faces
     `(telephone-line-evil ((,c :inherit mode-line :weight bold :foreground ,bg-dim)))
     `(telephone-line-evil-emacs ((,c :inherit telephone-line-evil :background ,magenta-cooler)))
     `(telephone-line-evil-insert ((,c :inherit telephone-line-evil :background ,green)))
     `(telephone-line-evil-motion ((,c :inherit telephone-line-evil :background ,blue)))
     `(telephone-line-evil-normal ((,c :inherit telephone-line-evil :background ,red)))
     `(telephone-line-evil-replace ((,c :inherit telephone-line-evil :background ,magenta)))
     `(telephone-line-evil-visual ((,c :inherit telephone-line-evil :background ,yellow-warmer)))
     `(telephone-line-evil-operator ((,c :inherit telephone-line-evil :background ,magenta-warmer)))
     `(telephone-line-evil-god ((,c :inherit telephone-line-evil :background ,cyan))))))

(add-hook 'clapoto-themes-post-load-hook #'clapoto-themes-custom-faces)

;;;###autoload
(when load-file-name
  (let ((dir (file-name-directory load-file-name)))
    (unless (file-equal-p dir (expand-file-name "themes/" data-directory))
      (add-to-list 'custom-theme-load-path dir))))

(provide 'clapoto-themes)
;;; clapoto-themes.el ends here.
