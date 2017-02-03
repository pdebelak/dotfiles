(defun copy-file-name-to-clipboard ()
  "Copy the current buffer file name to the clipboard."
  (interactive)
  (kill-new (buffer-file-name))
  (message "Filename copied"))

(global-set-key (kbd "C-c C-f") 'copy-file-name-to-clipboard)
