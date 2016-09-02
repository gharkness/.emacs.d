;;; bog-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "bog" "bog.el" (22469 58952 0 0))
;;; Generated autoloads from bog.el

(autoload 'bog-find-citekey-file "bog" "\
Open citekey-associated file.

The citekey is taken from the text under point if it matches
`bog-citekey-format' or from the current tree.

With prefix argument NO-CONTEXT, prompt with citekeys that have
an associated file in `bog-file-directory'.  Do the same if
locating a citekey from context fails.

If the citekey prompt is slow to appear, consider enabling the
`files' category in `bog-use-citekey-cache'.

\(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-dired-jump-to-citekey-file "bog" "\
Jump to citekey file in Dired.

The citekey is taken from the text under point if it matches
`bog-citekey-format' or from the current tree.

With prefix argument NO-CONTEXT, prompt with citekeys that have
an associated file in `bog-file-directory'.  Do the same if
locating a citekey from context fails.

If the citekey prompt is slow to appear, consider enabling the
`files' category in `bog-use-citekey-cache'.

\(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-rename-staged-file-to-citekey "bog" "\
Rename citekey file in `bog-stage-directory' with `bog-file-renaming-func'.

The citekey is taken from the text under point if it matches
`bog-citekey-format' or from the current tree.

With prefix argument NO-CONTEXT, prompt with citekeys present in
any note file.  Do the same if locating a citekey from context
fails.

If the citekey prompt is slow to appear, consider enabling the
`files' category in `bog-use-citekey-cache'.

\(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-rename-citekey-file "bog" "\
Associate a citekey file with a new citekey.

This allows you to update a file's name if you change the
citekey.

The new citekey is taken from the text under point if it matches
`bog-citekey-format' or from the current tree.

With prefix argument NO-CONTEXT, prompt with citekeys present in
any note file.  Do the same if locating a citekey from context
fails.

\(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-list-orphan-files "bog" "\
Find files in `bog-file-directory' without a citekey heading.

\(fn)" t nil)

(autoload 'bog-find-citekey-bib "bog" "\
Open BibTeX file for a citekey.

The citekey is taken from the text under point if it matches
`bog-citekey-format' or from the current tree.

The variable `bog-find-citekey-bib-func' determines how the
citekey is found.

With prefix argument NO-CONTEXT, prompt with citekeys that have a
BibTeX entry.  Do the same if locating a citekey from context
fails.

If the citekey prompt is slow to appear, consider enabling the
`bib' category in `bog-use-citekey-cache'.

\(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-clean-and-rename-staged-bibs "bog" "\
Clean and rename BibTeX files in `bog-stage-directory'.

Search for new BibTeX files in `bog-stage-directory', and run
`bibtex-clean-entry' on each file before it is moved to
`bog-bib-directory'/[<subdir>/]<citekey>.bib, where the optional
<subdir> is determined by `bog-subdirectory-group'.

This function is only useful if you use the non-standard setup of
one entry per BibTeX file.

\(fn)" t nil)

(autoload 'bog-create-combined-bib "bog" "\
Create a buffer that has entries for a collection of citekeys.
If in Dired, collect citekeys from marked files.  Otherwise,
collect citekeys the current buffer.  With prefix argument ARG,
reverse the meaning of `bog-combined-bib-ignore-not-found'.

\(fn &optional ARG)" t nil)

(autoload 'bog-list-orphan-bibs "bog" "\
Find bib citekeys that don't have a citekey heading.

\(fn)" t nil)

(autoload 'bog-search-citekey-on-web "bog" "\
Open browser and perform query based for a citekey.

Take the URL from `bog-web-search-url'.

The citekey is split by groups in `bog-citekey-format' and joined by
\"+\" to form the query string.

The citekey is taken from the text under point if it matches
`bog-citekey-format' or from the current tree.

With prefix argument NO-CONTEXT, prompt with citekeys present in
any note file.  Do the same if locating a citekey from context
fails.

If the citekey file prompt is slow to appear, consider enabling
`bog-use-citekey-cache'.

If the citekey prompt is slow to appear, consider enabling the
`all-notes' category in `bog-use-citekey-cache'.

\(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-goto-citekey-heading-in-notes "bog" "\
Find citekey heading in notes.

The citekey is taken from the text under point if it matches
`bog-citekey-format'.

When the prefix argument NO-CONTEXT is given by a single
\\[universal-argument], prompt with citekeys that have a heading
in any note file.  Do the same if locating a citekey from context
fails.  With a double \\[universal-argument], restrict the prompt
to citekeys that have a heading in the current buffer.

If the citekey prompt is slow to appear, consider enabling the
`heading' category in `bog-use-citekey-cache'.

If the heading is found outside any current narrowing of the
buffer, the narrowing is removed.

\(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-citekey-tree-to-indirect-buffer "bog" "\
Open subtree for citekey in an indirect buffer.

Unless `bog-keep-indirect' is non-nil, replace the indirect
buffer from the previous call.

The citekey is taken from the text under point if it matches
`bog-citekey-format'.

With prefix argument NO-CONTEXT, prompt with citekeys that have a
heading in any note file.  Do the same if locating a citekey from
context fails.

If the citekey prompt is slow to appear, consider enabling the
`heading' category in `bog-use-citekey-cache'.

\(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-refile "bog" "\
Refile heading within notes.
All headings from Org files in `bog-note-directory' at or above
level `bog-refile-maxlevel' are considered.

\(fn)" t nil)

(autoload 'bog-search-notes "bog" "\
Search notes using `org-search-view'.
With prefix argument TODO-ONLY, search only TODO entries.  If
STRING is non-nil, use it as the search term (instead of
prompting for one).

\(fn &optional TODO-ONLY STRING)" t nil)

(autoload 'bog-search-notes-for-citekey "bog" "\
Search notes for citekey using `org-search-view'.

With prefix argument TODO-ONLY, search only TODO entries.

The citekey is taken from the text under point if it matches
`bog-citekey-format' or from the current tree.  If a citekey is
not found, prompt with citekeys present in any note file.

If the citekey prompt is slow to appear, consider enabling the
`all-notes' category in `bog-use-citekey-cache'.

\(fn &optional TODO-ONLY)" t nil)

(autoload 'bog-insert-heading-citekey "bog" "\
Select a citekey to insert at point.
By default, offer heading citekeys from all files.  With prefix
argument CURRENT-BUFFER, limit to heading citekeys from the
current buffer.

\(fn &optional CURRENT-BUFFER)" t nil)

(autoload 'bog-open-citekey-link "bog" "\
Open a link for a citekey heading.

If FIRST is non-nil, open the first link under the heading.
Otherwise, if there is more than one link under the heading,
prompt with a list of links using the `org-open-at-point'
interface.

The citekey is taken from the text under point if it matches
`bog-citekey-format' or from the current tree.

With prefix argument NO-CONTEXT, prompt with citekeys that have a
heading in any note file.  Do the same if locating a citekey from
context fails.

If the citekey prompt is slow to appear, consider enabling the
`heading' category in `bog-use-citekey-cache'.

\(fn &optional NO-CONTEXT FIRST)" t nil)

(autoload 'bog-open-first-citekey-link "bog" "\
Open first link for a citekey heading.

The citekey is taken from the text under point if it matches
`bog-citekey-format' or from the current tree.

With prefix argument NO-CONTEXT, prompt with citekeys that have a
heading in any note file.  Do the same if locating a citekey from
context fails.

\(fn &optional NO-CONTEXT)" t nil)

(autoload 'bog-next-non-heading-citekey "bog" "\
Move foward to next non-heading citekey.
With argument ARG, do it ARG times.

\(fn &optional ARG)" t nil)

(autoload 'bog-previous-non-heading-citekey "bog" "\
Move backward to previous non-heading citekey.
With argument ARG, do it ARG times.

\(fn &optional ARG)" t nil)

(autoload 'bog-jump-to-topic-heading "bog" "\
Jump to topic heading.
Topic headings are determined by `bog-topic-heading-level'.

\(fn)" t nil)

(defvar bog-command-map (let ((map (make-sparse-keymap))) (define-key map "b" 'bog-find-citekey-bib) (define-key map "c" 'bog-search-notes-for-citekey) (define-key map "f" 'bog-find-citekey-file) (define-key map "F" 'bog-dired-jump-to-citekey-file) (define-key map "g" 'bog-search-citekey-on-web) (define-key map "h" 'bog-goto-citekey-heading-in-notes) (define-key map "i" 'bog-citekey-tree-to-indirect-buffer) (define-key map "j" 'bog-jump-to-topic-heading) (define-key map "l" 'bog-open-citekey-link) (define-key map "L" 'bog-open-first-citekey-link) (define-key map "n" 'bog-next-non-heading-citekey) (define-key map "p" 'bog-previous-non-heading-citekey) (define-key map "r" 'bog-rename-staged-file-to-citekey) (define-key map "s" 'bog-search-notes) (define-key map "w" 'bog-refile) (define-key map "v" 'bog-view-mode) (define-key map "y" 'bog-insert-heading-citekey) map) "\
Map for Bog commands.
In Bog mode, these are under `bog-keymap-prefix'.
`bog-command-map' can also be bound to a key outside of Bog
mode.")

(fset 'bog-command-map bog-command-map)

(autoload 'bog-mode "bog" "\
Toggle Bog in this buffer.
With a prefix argument ARG, enable `bog-mode' if ARG is positive,
and disable it otherwise.  If called from Lisp, enable the mode
if ARG is omitted or nil.

\\{bog-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'bog-view-mode "bog" "\
Toggle Bog View mode in this buffer.

With a prefix argument ARG, enable `bog-view-mode' if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil.

Turning on Bog View mode sets the buffer to read-only and gives
many of the Bog commands a single-letter key binding.

\\<bog-view-mode-map>To exit Bog View mode, type \\[bog-view-quit].

\\{bog-view-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; bog-autoloads.el ends here
