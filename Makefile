localstack:
	docker-compose up

build:
	docker build -t sqs-sns-localstack .

create:
	docker run -v "$PWD":/usr/app -v /usr/app/node_modules --network snssqslocalstack_code-network sqs-sns-localstack npm run create

publish:
	docker run -v "$PWD":/usr/app -v /usr/app/node_modules --network snssqslocalstack_code-network sqs-sns-localstack npm run publish

consume:
	docker run -v "$PWD":/usr/app -v /usr/app/node_modules --network snssqslocalstack_code-network sqs-sns-localstack npm run consume