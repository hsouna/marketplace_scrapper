## Fast API to connect with extension

### Create enviroment & activate it
```bash
$ mamba env create --file conda/dev.yaml
$ conda activate data_science_api
```

### Install packages using poetry
```bash
$ poetry install
```

### Run the app
```bash
$ uvicorn main:app --reload
```

### Run ngrok to have public domain name
This is optional, usefull in the future maybe to expose our service...
```bash
$ ngrok http 8000 -host-header=rewrite
```
