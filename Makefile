SHELL = /bin/bash
.SHELLFLAGS = -ec

.ONESHELL:
upload:
	aws s3 sync site s3://zyrahbernardino.com

invalidation:
	aws cloudfront create-invalidation --distribution-id E8QJYPAAQP4JQ --paths "/*"

.PHONY: upload clear



