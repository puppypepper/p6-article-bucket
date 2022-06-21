include .env.secret

push:
	aws s3 sync ./bucket $(S3_URI)

pull:
	aws s3 sync $(S3_URI) ./bucket