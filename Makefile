dev-mode: clean
	mkdir -p .devcontainer
	cd .devcontainer && ln -s ../Dockerfile .
	cd .devcontainer && ln -s ../devcontainer.json .


sync-main:
	git branch --set-upstream-to="origin/main"
	git pull --rebase
	git branch --set-upstream-to="$(shell eval git symbolic-ref --short HEAD)"

clean:
	rm -rf .devcontainer