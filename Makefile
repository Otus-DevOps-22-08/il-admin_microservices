ME = iladmin
####################################################################################################
# build

build-ui: ## Сборка ui
	cd src/ui/; bash docker_build.sh
 
build-post: ## Сборка post
	cd src/post-py/; bash docker_build.sh
 
build-comment: ## Сборка post
	cd src/comment/; bash docker_build.sh

build-pm:
	cd monitoring/prometheus/;	bash docker_build.sh

build-all:     ## build all images
build-all: build-ui build-post build-comment build-pm
 
####################################################################################################
# push

push-ui: ## Сборка ui
	docker push $(ME)/ui

push-post: ## Сборка ui
	docker push $(ME)/post

push-comment: ## Сборка ui
	docker push $(ME)/comment

push-pm: ## Сборка ui
	docker push $(ME)/prometheus
	
push-all:	    	## push all images
push-all: push-ui push-post push-comment push-pm


####################################################################################################
# docker-compose

dcr:
	cd docker; docker-compose up -d
	
dcd:
	cd docker; docker-compose down

dcps:
	cd docker; docker-compose ps
