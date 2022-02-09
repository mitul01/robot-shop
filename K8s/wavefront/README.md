# Wavefront collector
Wavefront-collector.ps1 contains instructions on how to deploy a collector along with proxy which collector kubernetess metrics only. Use appropriate wavefront url and token to successfully deploy the collector
```shell

```
# Wavefront proxy 
A Wavefront proxy ingests metrics and forwards them to the Wavefront service in a secure, fast, and reliable manner. After you install a proxy in your environment, it can handle thousands of simultaneous clients. Your data collection agents or custom code send data to the proxy, which consolidates points into configurable batches and sends the data to the Wavefront service.
Know more about wavefront proxy here: https://docs.wavefront.com/proxies.html
Deploy the wavefront proxy using wavefront-proxy.yaml file.
