# Vert.x fatjar Example Maven Project
============

Based on the archetype: mvn archetype:generate -Dfilter=io.vertx:

mvn package -> will result in a fat-jar

mvn verify  -> creates a zip-file containing the fatjar and a scripts folder to startup the fatjar automatically

mvn package && mvn docker_package -> creates a Docker container containing the fat-jar 

