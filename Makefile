clean: 
	/bin/rm -rf ./.deps/roles

dep: 
	mkdir -p ./.deps/roles
	ansible-galaxy install -v -r requirements.yml --ignore-errors
