# SNS/SQS Example

This is an example of how to use AWS SNS and SQS to publish messages to a topic(SNS) and consume them from a queue(SQS) using localstack.

## Spin up localstack
````
make localstack
````

## Build PoC image

````
make build
````

## Create Topic and Queue

````
make create
````

## Run

### Publish
````
make publish
````

### Consume
````
make consume
````