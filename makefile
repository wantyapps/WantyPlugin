test:
	git add .
	git commit -m "TEST"
	git push --set-upstream origin dev
	nvim +PackerUpdate
