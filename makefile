test:
	git add .
	git commit -m "AUTOGENERATED TEST COMMIT MSG"
	git push --set-upstream origin dev
	nvim +PackerUpdate
