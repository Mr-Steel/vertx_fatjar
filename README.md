W-JAX 2014 Example project containing

- Verticles in Java
- Verticles in Scala
- Build target for a fat-JAR
- Build target for a Docker-image
- Build target for a ZIP file containing a shell-script to start the application

============

Based on the archetype: mvn archetype:generate -Dfilter=io.vertx:

Our build targets:
- `mvn package`: will result in a fat-jar
- `mvn verify`: creates a zip-file containing the fatjar and a scripts folder to startup the fatjar automatically
- `mvn package && mvn docker_package`: creates a Docker container containing the fat-jar 

