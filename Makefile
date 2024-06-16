THIS_BRANCH := $(git symbolic-ref --short HEAD)

dev-mode: clean
	mkdir -p .devcontainer
	cd .devcontainer && ln -s ../Dockerfile .
	cd .devcontainer && ln -s ../devcontainer.json .


sync-main:
	git branch --set-upstream-to="origin/main"
	git pull --rebase
	git branch --set-upstream-to="$(THIS_BRANCH)"

clean:
	rm -rf .devcontainer