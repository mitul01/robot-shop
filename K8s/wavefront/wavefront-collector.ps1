helm repo add wavefront https://wavefronthq.github.io/helm/ 
helm repo update
kubectl create namespace wavefront 
helm install wavefront wavefront/wavefront --set wavefront.url=<YOUR_WAVEFRONT_URL> --set wavefront.token=<API_TOKEN>--set clusterName="minikube" --set proxy.tracePort=30000 --set proxy.histogramPort=40000 --set proxy.port=2878 --set proxy.traceJaegerGrpcListenerPort=14250 --set proxy.traceJaegerApplicationName="robotShop" --namespace wavefront
