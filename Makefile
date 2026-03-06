.PHONY: help dev build preview

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}'

dev: ## Start the development server
	npm run dev

build: ## Build the site for production
	npm run build

preview: ## Preview the production build locally
	npm run preview
