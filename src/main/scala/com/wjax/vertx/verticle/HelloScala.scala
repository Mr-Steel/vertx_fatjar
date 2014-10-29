package com.wjax.vertx.verticle


import org.vertx.scala.core.http.HttpServerRequest
import org.vertx.scala.platform.Verticle


class HelloScala extends Verticle {
  override def start() {
    vertx.createHttpServer.requestHandler { req: HttpServerRequest =>
      req.response.end("This is a Verticle class written in Scala")
    }.listen(9090)
  }
}