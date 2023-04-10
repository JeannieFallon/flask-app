TAG=v1.0.0
PW=pass

image:
	scripts/image.sh $(TAG)
.PHONY += image

run:
	scripts/run.sh $(TAG)
.PHONY += run

db:
	scripts/db.sh $(PW)
.PHONY += db
