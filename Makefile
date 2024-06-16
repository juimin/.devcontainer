dev-mode: clean
	mkdir -p .devcontainer
	cd .devcontainer && ln -s ../Dockerfile .
	cd .devcontainer && ln -s ../devcontainer.json .


clean:
	rm -rf .devcontainer