#build params
param(
    [string]$version
)

# build image
docker build -t claywey/databricks_rpluspython:$version .

# push image
docker push claywey/databricks_rpluspython:$version