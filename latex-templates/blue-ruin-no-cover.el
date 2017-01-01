(provide 'blue-ruin-no-cover)


(add-to-list 'org-latex-classes
             `((f-base buffer-file-name)
               ,(f-read
                 (replace-regexp-in-string "\.el" "\.tex" buffer-file-name))
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


(setq org-latex-to-pdf-process
      '("xelatex -interaction nonstopmode %f"
        "xelatex -interaction nonstopmode %f")) ;; for multiple passes
