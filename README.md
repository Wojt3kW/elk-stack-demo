**elk-stack-demo** allows you to run the latest version of the [Elastic stack](https://www.elastic.co/elastic-stack/) with [Docker](https://www.docker.com/products/docker-desktop/) and [Docker Compose](https://docs.docker.com/compose/).

It gives you the ability to analyze the data by using the searching/aggregation capabilities of Elasticsearch and the visualization power of Kibana.

Based on the official Docker images from Elastic:

* [Elasticsearch](https://github.com/elastic/elasticsearch/tree/main/distribution/docker)
* [Logstash](https://github.com/elastic/logstash/tree/main/docker)
* [Kibana](https://github.com/elastic/kibana/tree/main/src/dev/build/tasks/os_packages/docker_generator)

## Getting started
1. Download [Docker Desktop](https://www.docker.com/products/docker-desktop/) for Windows. [Docker Compose](https://docs.docker.com/compose/) will be automatically installed.
2. Install Docker Desktop
3. Open terminal
4. Run start.bat
5. Wait until docker runs
6. Go to http://localhost:9200/
7. Go to http://localhost:5601/