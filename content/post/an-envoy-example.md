---
title: "An Envoy Example"
date: 2018-04-01T19:46:52+02:00
draft: true
---

## Intro
Lately at work I've been dealing a lot with [envoy][envoy]. Envoy at heart is a reverse proxy, but the revolutionary idea that makes it so much more than "traditional" solutions is that the configuration is, almost, completely configurable via APIs. This is exactly what you want when you're working on an environment where everything is dynamic, your app might be running on one server at one point, but it could be scheduled somewhere else 5 minutes later. 

Yes, it is possible to do this in other "traditional" proxies (nginx, apache, haproxy) but you might end up writing your own API server that outputs the configuration for this product and deals with reloading the server when it changes, a popular way of solving this issue is working with consul-template but that means running consul and that can be hard (but not impossible).

By the way, [istio][istio] is built on top of envoy so even if you're not running kubernetes, setting up a [service mesh][service-mesh] comes very natural.
## The configuration blocks
So a really nice thing of envoy are the docs, more than the completeness of them, that they're 
continuously evolving and adding more and more content to them. And because the configuration is to
be read from an API server you can very easily see what's the schema of the data you need to 
provide. Here we're going to describe at a very high level what each base configuration block 
is and how it might match to some concept from a different product (nginx).
### Routes
### Listeners

### Clusters

### Endpoints

## How to get up and running with it
## A simple front proxy example
Also it's the base on top of which [istio][istio] is built, so setting up a [service mesh][service-mesh]
comes very natural.

## Learn more
[learnenvoy][learnenvoy]

To learn how to manage envoy, configure it and 
[envoy]:https://envoyproxy.io
[istio]:https://istio.io/
[learnenvoy]:https://www.learnenvoy.io/
[service-mesh]:https://blog.envoyproxy.io/service-mesh-data-plane-vs-control-plane-2774e720f7fc