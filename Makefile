all:
	stack build
	stack exec personal-web rebuild

watch:
	stack exec personal-web watch

deploy:
	stack exec personal-web rebuild
	git co master
	cp -r _site/* ./
	git add .
	git commit -a
	git push origin master
	git co source
