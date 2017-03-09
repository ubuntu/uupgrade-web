# Ubuntu Upgrade Web Frontend

Web UI for processing data

# Development

```
virtualenv -p python3 .venv
. .venv/bin/activate
python setup.py develop
```

# Deployment

```
docker build -t uupgrade-web .
```
