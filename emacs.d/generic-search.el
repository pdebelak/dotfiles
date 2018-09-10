;; generic-search.el --- A simple search tool that does the right thing

;; built-in command mapping used by generic-search-set-command
(setq generic-search-commands
      '((grep "grep --color -inH -e \"<R>\" *")
        (rg "rg -S -L --vimgrep \"<R>\"")
        (git-grep "git --no-pager grep -n -e \"<R>\"")
        (ag "ag --vimgrep \"<R>\"")
        (ack "ack -s -H --nopager --nogroup --column \"<R>\"")))

(defun generic-search-set-command (command)
  "Sets the command to be used by generic-search. Takes either a
  symbol key from generic-search-commands or a full custom search
  command. Should be formatted for grep-expand-template."
  (let ((builtin-command (cadr (assoc command generic-search-commands))))
    (if builtin-command
	(setq generic-search-template builtin-command)
      (setq generic-search-template command))))

(defun generic-search-initialize ()
  "Sets the generic search command based on which smart search
  executables are in the path. Prefers ripgrep to ag, ag to ack,
  and ack to grep"
  (unless (boundp 'generic-search-set-command)
          (cond
	   ((executable-find "rg")
	    (generic-search-set-command 'rg))
	   ((executable-find "ag")
	    (generic-search-set-command 'ag))
	   ((executable-find "ack")
	    (generic-search-set-command 'ack))
	   (t
	    (generic-search-set-command 'grep)))))

(defun generic-search ()
  "Run the generic search command with the provided argument
  using the generic-search-template"
  (interactive)
  (require 'grep)
  (let* ((search (grep-read-regexp))
	 (command (grep-expand-template generic-search-template search)))
    (add-to-history 'grep-history command)
    (compilation-start
     command
     'grep-mode)))
