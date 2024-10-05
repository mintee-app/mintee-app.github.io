all: format-check lint validate

serve:
	python3 -m http.server -d dist

lint:
	npx stylelint dist/styles

format-check:
	npx prettier --check dist

validate:
	npx html-validate dist
