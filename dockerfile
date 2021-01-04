apiVersion: apps/v1 # for versions before 1.9.0 use apps/v1beta2
kind: Deployment
metadata:
  name: sreekanth-deployment
spec:
  selector:
    matchLabels:
      app: sreekanth
  replicas: 2 # tells deployment to run 2 pods matching the template
  template:
    metadata:
      labels:
        app: sreekanth
    spec:
      containers:
      - name: sreekanth
        image: 349948765351.dkr.ecr.ap-south-1.amazonaws.com/sreekanth:latest
        ports:
        - containerPort: 80
