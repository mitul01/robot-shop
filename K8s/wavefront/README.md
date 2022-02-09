# Wavefront collector
Wavefront-collector.ps1 contains instructions on how to deploy a collector along with proxy which collector kubernetess metrics only. Use appropriate wavefront url and token to successfully deploy the collector
```shell
helm repo add wavefront https://wavefronthq.github.io/helm/ 
helm repo update
kubectl create namespace wavefront 
helm install wavefront wavefront/wavefront --set wavefront.url=<YOUR_WAVEFRONT_URL> --set wavefront.token=<API_TOKEN>--set clusterName="minikube" --set proxy.tracePort=30000 --set proxy.histogramPort=40000 --set proxy.port=2878 --set proxy.traceJaegerGrpcListenerPort=14250 --set proxy.traceJaegerApplicationName="robotShop" --namespace wavefront
```
# Wavefront proxy 
A Wavefront proxy ingests metrics and forwards them to the Wavefront service in a secure, fast, and reliable manner. After you install a proxy in your environment, it can handle thousands of simultaneous clients. Your data collection agents or custom code send data to the proxy, which consolidates points into configurable batches and sends the data to the Wavefront service. <br>
Know more about wavefront proxy here: https://docs.wavefront.com/proxies.html <br>
Deploy the wavefront proxy using wavefront-proxy.yaml file. <br>
