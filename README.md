# README

Hi!
Universal Elasticsearch docker method:# README

Hi!
Universal Elasticsearch docker method:
1) start docker container:
   
```bash
docker run -d -p 127.0.0.1:9200:9200 -p 127.0.0.1:9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.17.8
```
1) check Elasticsearch docker 
 `curl http://localhost:9200` or in browser localhost:9200
1) in rails c
```rb
Post.reindex
```
1) Stop Elasticsearch in docker container
`docker ps -a -f status=running`
--> find container_id for docker.elastic.co/elasticsearch/elasticsearch:7.17.8 
`docker stop container_id`
1) start docker container:
   
```bash
docker run -d -p 127.0.0.1:9200:9200 -p 127.0.0.1:9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.17.8
```
1) check Elasticsearch docker 
 `curl http://localhost:9200` or in browser localhost:9200
1) in rails c
```rb
Post.reindex
```
1) Stop Elasticsearch in docker container
`docker ps -a -f status=running`
--> find container_id for docker.elastic.co/elasticsearch/elasticsearch:7.17.8 
`docker stop container_id`