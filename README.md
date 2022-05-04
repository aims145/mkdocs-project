# My MKDocs Project

MkDocs is a Python library for creating mark down based conent.

## Creating docker Image
**Before you start using commands make sure docker is installed on your machine.**

Below command will help you in create docker image.

```bash
docker build -t <image name> -f Dockerfile .
```

## Usage
### For creating project content
```python
docker run -it --rm -v ${PWD}:/app --name <container name> <image name> produce
```
Procude is argument we are passing for generating content. `${PWD}` refer to current working directory. It mean you should be inside root folder of project. `myproj` folder contains mkdocs project which required to be mounted to containers work directory. 

### For serving project content
```python
docker run -it --rm -p 8000:8000 -v ${PWD}:/app --name <container name> <image name> server
```
Build is argument we are passing for generating content. `${PWD}` refer to current working directory. It mean you should be inside root folder of project. `myproj` folder contains mkdocs project which required to be mounted to containers work directory. 

### Check if site up using browser 
hit http://localhost:8000

![alt text](https://i.ibb.co/mydQX1F/mkdocs.jpg)

