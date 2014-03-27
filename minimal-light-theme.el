;;; minimal-theme.el --- A dark minimalistic Emacs 24 theme.

;; Copyright (C) 2014 Anler Hp

;; Author: Anler Hp <anler86 [at] gmail.com>
;; Keywords: color, theme, minimal
;; X-URL: http://github.com/ikame/minimal-theme
;; URL: http://github.com/ikame/minimal-theme

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; A minimalistic color theme to avoid distraction with
;; colors. Based on monochrome theme.

;;; Code:
(deftheme minimal-light "minimal light theme.")

(let ((foreground "black")
      (background "white")
      (dark "grey80")
      (light "gray20")
      (light-2 "light slate gray"))
  (custom-theme-set-faces
   'minimal-light

   ;; basic stuff
   `(default ((t (:background ,background :foreground ,foreground))))
   `(cursor ((t (:background ,light))))
   `(fixed-pitch ((t (:family "Monospace"))))
   `(variable-pitch ((t (:family "Sans Serif"))))
   `(escape-glyph ((t (:foreground ,light))))

   `(minibuffer-prompt ((t (:foreground ,foreground :weight bold))))

   `(highlight ((t (:foreground ,background :background ,light))))
   `(region ((t (:foreground ,background :background "light gray"))))
   `(secondary-selection ((t (:background ,light-2))))

   ;; whitespace
   `(trailing-whitespace ((t (:background "red"))))

   `(font-lock-builtin-face ((t (:foreground ,foreground :weight bold))))
   `(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-comment-face ((t (:foreground ,dark :slant italic))))
   `(font-lock-constant-face ((t (:foreground ,foreground :weight bold))))
   `(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
   `(font-lock-keyword-face ((t (:weight bold :foreground ,foreground))))
   `(font-lock-negation-char-face ((t nil)))
   `(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
   `(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   `(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face ((t (:foreground ,light))))
   `(font-lock-type-face ((t (:foreground ,foreground :slant italic))))
   `(font-lock-function-name-face ((t (:foreground ,foreground :slant italic))))
   `(font-lock-variable-name-face ((t (:foreground ,foreground :weight bold))))
   `(font-lock-warning-face ((t (:foreground "yellow"))))

   '(button ((t (:inherit link))))

   `(link ((t (:foreground ,light :underline t))))
   `(link-visited ((t (:foreground ,light-2 :underline t))))

   `(fringe ((t (:background ,background :foreground ,foreground))))

   `(mode-line
     ((t (:box (:line-width -1 :color nil :style released-button)
               :foreground ,background :background ,foreground))))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-emphasis ((t (:weight bold))))
   `(mode-line-highlight
     ((((class color) (min-colors 88))
       (:box (:line-width 2 :color ,dark :style released-button)))
      (t (:inherit (highlight)))))
   `(mode-line-inactive
     ((t (:box (:line-width -1 :color nil :style released-button)
               :foreground ,background :background ,dark))))

   `(isearch ((t (:foreground ,background :background ,light))))
   `(isearch-fail ((((class color) (min-colors 88) (background ,light))
                    (:background "RosyBrown1"))
                   (((class color) (min-colors 88) (background ,dark))
                    (:background "red4"))
                   (((class color) (min-colors 16)) (:background "red"))
                   (((class color) (min-colors 8)) (:background "red"))
                   (((class color grayscale)) (:foreground ,light))
                   (t (:inverse-video t))))
   `(lazy-highlight ((t (:foreground ,background :background ,light))))
   `(match ((((class color) (min-colors 88) (background ,light))
             (:background "yellow1"))
            (((class color) (min-colors 88) (background ,dark))
             (:background "RoyalBlue3"))
            (((class color) (min-colors 8) (background ,light))
             (:foreground ,background :background "yellow"))
            (((class color) (min-colors 8) (background ,dark))
             (:foreground ,foreground :background "blue"))
            (((type tty) (class mono)) (:inverse-video t))
            (t (:background ,dark))))

   '(next-error ((t (:inherit (region)))))
   '(query-replace ((t (:inherit (isearch)))))

   `(org-level-1 ((t (:bold t :foreground ,light-2 :height 1.5))))
   `(org-level-2 ((t (:bold t :foreground ,light-2 :height 1.2))))
   `(org-level-3 ((t (:bold t :foreground ,light-2 :height 1.0))))
   `(org-level-4 ((t (:bold t :foreground ,light-2 :height 1.0))))
   `(org-link ((t (:underline t))))
   `(org-todo ((t (:bold t :foreground "red"))))
   `(org-done ((t (:bold t :foreground "green"))))

   ;; ido
   `(ido-first-match ((t (:underline t))))
   `(ido-only-match ((t (:underline t))))
   `(ido-subdir ((t (:weight bold))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'minimal-light)
