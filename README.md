# Bookinfo productpage service

Productpage service has been developed on Python

## License

MIT License

## Prerequisite

* Python 3.8

## How to run
```bash
pip install -r requirements.txt
python productpage.py 8083
```

## How to run with Docker
```bash
# Build Docker Image for productpage service
docker build -t productpage .

# Run details service on port 8083
docker run -d --name productpage -p 8083:8083 --link details:details --link ratings:ratings --link reviews:reviews -e 'REVIEWS_HOSTNAME=http://reviews:8082' -e 'RATINGS_HOSTNAME=http://ratings:8080' -e 'DETAILS_HOSTNAME=http://details:8081' productpage
```

## How to run with Docker Compose

```bash
docker-compose up
```