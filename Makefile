all:
	stack build
	stack exec personal-web rebuild

watch:
	stack exec personal-web watch
