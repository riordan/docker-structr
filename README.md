Structr Docker
===============
Instructions for working with Structr in Docker (a work in progress).
-------------------------

# A Request
If you have any suggestions about how to batten this thing up for security or making it easier to deploy, I'd really appreciate if you created a GitHub Issue. Any help would be greatly appreciated.

# Instructions
## Quickstart
1. Build local Docker image (This will be from Docker Hub registry soon enough) ```docker build . -t structr:2.1.3```
2. Create local copy of datavolume (so your data will all be in one place, so take ample care of it)

## Persisting Data

Create a local version of the dataset
```
docker create --name structr_data structr:2.1.3
# Change to directory to save the Postgresql data dir (structr_data) of the structr image
docker cp structr_data:/usr/lib/structr/ $PWD/structr_data/
docker rm -f structr_data

```

Run it locally:
`docker run -it -v $(pwd)/structr_data/:/usr/lib/structr/ -p 8082:8082 structr:2.1.3`

# Customization
Customizations can be made to the `structr.conf` file. If you follow the Persisting Data instructions, you can add a [structr.conf](https://support.structr.com/article/48) file to your local structr_data folder

# Background
