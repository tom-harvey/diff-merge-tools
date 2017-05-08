HELPERS=diffmerge-svndiff diffmerge-svndiff diffmerge-svnmerge \
	    diffmerge-svnmerge svndiff-vimdiff svnmerge-vimdiff 

COMMANDS=gsvn svngdiff svngrep vsvn

SCRIPTS=$(HELPERS) $(COMMANDS)

test:
	echo $(SCRIPTS)
	shellcheck $(SCRIPTS)
