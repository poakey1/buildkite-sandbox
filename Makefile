URL = https://poakey1.jfrog.io/artifactory/
USER = poakey1@gmail.com
API_KEY = AKCp8jQnBxgSuLTQWkNRepVxC8ntxnqda5WdaCmrnYHHZnuv2f3nxpuZfMz3GdMPqa93APsVC
PATTERN ?= default_to_not_match_anything

RUN_JFROG := docker-compose run --rm jfrog

.PHONY: upload
upload:	
	$(RUN_JFROG) jfrog rt upload \
	--url=$(URL) \
	--user=$(USER) \
	--password=$(API_KEY) \
	"artifacts/*" \
	"default-generic-virtual/$(PATTERN)/"

.PHONY: delete
delete:	
	$(RUN_JFROG) jfrog rt delete \
	--url=$(URL) \
	--user=$(USER) \
	--password=$(API_KEY) \
	"default-generic-virtual/$(PATTERN)*"
