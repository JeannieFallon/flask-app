TAG=v1.0.0

image:
	scripts/image.sh $(TAG)
.PHONY += image

run:
	scripts/run.sh $(TAG)
.PHONY += run
