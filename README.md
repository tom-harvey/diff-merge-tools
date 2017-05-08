# diff-merge-tools

Scripts and configurations for `svn` and `git` to help diff-ing and merging 
operations with external tools 
   [vimdiff](http://vimhelp.appspot.com/diff.txt.html#diff.txt), 
   [meld](http://meldmerge.org/), and 
   [diffmerge](https://sourcegear.com/diffmerge/).

##Commands

    * gsvn
    * vsvn
    * svngrep

##Helper Functions

    * diffmerge

## issues

* not all issues documented
* git stuff needs testing
* svn stuff needs re-testing
* want to support more than `svn` and `git`. 
  [`fossil`](https://www.fossil-scm.org/) ?

## Notes/Tips

### git config

```INI
[difftool]
	prompt = 0
[diff]
	tool = vimdiff
	guitool = gvimdiff
[alias]
	vd = difftool
	gd = difftool -g
	meld = difftool --tool=meld
```

### .vimrc suggestions

```vim
" Diff Items {
if &diff
  let g:solarized_diffmode="high"
  if has("gui_running")
    "try for wide screen"
    set columns=170
  endif
" TODO web suggests reducing syntax coloring while in diff mode to make diff
" coloring easier to see
"
" shortcut quit all windows 
  map <leader>q :qall<CR>
endif
" } end Diff Items
```

I have not used [`mercurial`](https://www.mercurial-scm.org/)
but they have suggestions for working with `vim` [here](
https://www.mercurial-scm.org/wiki/MergingWithVim).
