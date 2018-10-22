.PHONY: all deploy clean

dist:
	git worktree add dist gh-pages

deploy:
	cd dist && \
	git add --all && \
	git commit -m "deploy to gh-pages" && \
	git push origin gh-pages

# Removing the actual dist directory confuses git and will require a git worktree prune to fix
clean:
	rm -rf dist/*