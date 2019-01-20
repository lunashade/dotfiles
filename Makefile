all:

push: commit
	git push

commit:
	git add .
	git commit

deploy:
	./deploy.sh
