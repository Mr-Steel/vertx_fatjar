package com.wjax.vertx.verticle;

import org.vertx.java.platform.Verticle;

public class StarterVerticle extends Verticle {

    public void start() {
        container.logger().info("Start deploying verticles...");
        container.logger().info("Deploy PingVerticle ");
        container.deployVerticle(PingVerticle.class.getName(), 1);
        container.deployVerticle("scala:com.wjax.vertx.verticle.HelloScala");
    }
}