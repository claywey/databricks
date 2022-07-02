#build params
param(
    [string]$version
)

# build image
docker build -t claywey/databricks:$version .

# push image
docker push claywey/databricks:$version