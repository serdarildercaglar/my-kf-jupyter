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