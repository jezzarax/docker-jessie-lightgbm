## LightGBM for debian jessie docker image

Just a toy version of debian jessie with lightgbm in it for further internal extension.

Due to some reasons I have to use debian jessie base image and needed to plug lightgbm inside so I can use it in a k8s cluster.

### Build & run

```
docker build -t lgbm-jessie .
docker run --name lgbm-jessie-sample lgbm-jessie python /app/sample.py
```
 
