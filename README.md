### build docker image
```
docker build -t my-kf-jupyter -f ./Dockerfile ./
```

### Tag image
```
docker tag my-kf-jupyter andrewm4894/my-kf-jupyter:latest
```

### Push image
```
docker push andrewm4894/my-kf-jupyter:latest
```

### docker run with jupyter
```docker run -p 8888:8888 jupyter/minimal-notebook```
