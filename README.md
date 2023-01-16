a projektben kepzeletbeli neveket hasznatunk, a valosaggal valo egyezes, kizarolag a veletlen muve ...

## Usage

```
docker run -d \
  -v vipdb:/var/lib/postgresql/data \
  -v $PWD/sql:/docker-entrypoint-initdb.d \
  --name mydb \
  -e POSTGRES_PASSWORD=s3cr3t \
  postgres
```