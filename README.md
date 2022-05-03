# My MKDocs Project

MkDocs is a Python library for creating mark down based conent.

## Creating docker Image

Below command will help you in create docker image.

```bash
docker build -t <image name> -f Dockerfile .
```

## Usage
### For creating project content
```python
docker run -it --rm -v `pwd`/myproj:/app --name <container name> <image name> build
```
Build is argument we are passing for generating content. `pwd` refer to current working directory. It mean you should be inside root folder of project. `myproj` folder contains mkdocs project which required to be mounted to containers work directory. 

### For serving project content
```python
docker run -it --rm -v `pwd`/myproj:/app --name <container name> <image name> server
```
Build is argument we are passing for generating content. `pwd` refer to current working directory. It mean you should be inside root folder of project. `myproj` folder contains mkdocs project which required to be mounted to containers work directory. 