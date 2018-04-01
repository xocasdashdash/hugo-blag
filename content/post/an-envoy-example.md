---
title: "An Envoy Example"
date: 2018-04-01T19:46:52+02:00
draft: true
---

Lately at work I've been working with [envoy][envoy]. Envoy is a proxy, but it lets you do much more than that, almost all of it's configuration can live on a configuration server, this means that 
routing traffic to a new server is pretty easy to acomplish, no need to reload a service, using multiple
projects to dynamically generate configuration (nginx/haproxy + consul template for example). 
Also it's the base on top of which [istio][istio] is built, so setting up a [service mesh][service-mesh]
comes very easy.

To learn how to manage envoy, configure it and 
[envoy]:https://envoyproxy.io
[istio]:https://istio.io/
[service-mesh]:https://blog.envoyproxy.io/service-mesh-data-plane-vs-control-plane-2774e720f7fc