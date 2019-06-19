IMG_NAME=php-bug-78183
BUILD=docker build -t php-bug-78183
RUN=docker run --rm -t php-bug-78183
IMAGES:=$(shell docker images | grep php-bug-78183 | awk '{ n=$$1":"$$2; print n }')

.PHONY: all clean

all: run/7.2 run/7.3 run/7.4-rc
	@echo finished

build/%: Dockerfile script.php
	$(BUILD):$* . --build-arg PHP_VER=$*

run/%: build/%
	@echo ==========================================
	@echo Running $*
	@echo
	$(RUN):$*
	@echo
	@echo ==========================================

clean:
	@echo Deleting images: 
	@echo $(IMAGES)
	docker rmi $(IMAGES)
