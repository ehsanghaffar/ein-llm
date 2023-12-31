build:
	docker build -t llm_image . $(c)
run:
	docker run -d -p 8000:8000 --name llm_app llm_image $(c)
stop:
	docker stop llm_app $(c)
remove:
	docker rm llm_app $(c)