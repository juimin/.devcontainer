dev-mode: clean
	mkdir -p .devcontainer
	cd .devcontainer && ln -s ../Dockerfile .
	cd .devcontainer && ln -s ../devcontainer.json .


sync-main:
	branch=$(git symbolic-ref --short HEAD)
	git branch --set-upstream-to="origin/main"
	git pull --rebase
	git branch --set-upstream-to="${branch}"

clean:
	rm -rf .devcontainer