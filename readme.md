## LightGBM for debian jessie docker image

Just a toy version of debian jessie with lightgbm in it for further internal extension.

Due to some reasons I have to use debian jessie base image and needed to plug lightgbm inside so I can use it in a k8s cluster.

### Build & run

```
docker build -t lgbm-jessie .
docker run --name lgbm-jessie-sample lgbm-jessie python /app/sample.py
```

### Some notes

* For some reason the default python:3.6-jessie-lite image has issues with openmp library, or its absence to be specific, thus vanilla python from python.org was installed to overcome the issue. I have a bit of prejudice for installing conda in production environments, so I didn't got the way proposed in the official lightgbm docker example as well.
