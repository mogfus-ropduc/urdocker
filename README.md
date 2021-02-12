# urdocker

Builds a Docker image with the latest Urbit binary. Mounts a local directory in the container for your pier. Also lets you set a port of your choosing.

Advantages:
- isolated urbits
- can set a memory cap
- works with stars

Usage:
1. set up your Urbit locally and copy your `+code`
2. `./run.sh sampel-palnet ~/path/to/sampel-palnet/ 80`
3. Go to http://localhost and log in using your code

To see logs:
```
docker logs -f urbit-sampel-palnet
```

To see if your container is running:
```
docker ps
```
