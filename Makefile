.PHONY: update
update:
	git submodule foreach git pull
	git submodule update --recursive --remote
	git add .
	git cm -m "Update sumbodules"
	@echo "If you are happy with git commit run `git push`"

