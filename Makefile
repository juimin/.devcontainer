dev-mode:
	mkdir .devcontainer
	ln -s Dockerfile ./devcontainer/Dockerfile
	ln -s devcontainer.json ./devcontainer/devcontainer.json

clean:
	rm -rf .devcontainer