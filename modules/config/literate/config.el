;;; config/literate/config.el -*- lexical-binding: t; -*-

(when (modulep! +pretty)
  (defun +literate-auto-indent (&rest _)
    (normal-mode)
    (widen)
    (indent-region (point-min) (point-max))
    (save-buffer)))

(with-eval-after-load 'ob-tangle
  (add-hook 'org-babel-post-tangle-hook #'+literate-auto-indent)))
