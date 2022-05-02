from typing import Optional
import requests
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import json
import os
app = FastAPI()

origins = [
    "http://localhost.tiangolo.com",
    "https://localhost.tiangolo.com",
    "http://localhost",
    "http://localhost:8080",
    "*"
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["DELETE", "GET", "POST", "PUT"],
    allow_headers=["*"],
)


class DataFromExtension(BaseModel):
    cookies: str
    city: str

def safe_open_w(path):
    ''' Open "path" for writing, creating any parent directories as needed.
    '''
    os.makedirs(os.path.dirname(path), exist_ok=True)
    return open(path, 'w')

@app.get("/parse_content/{city}")
def parse_content(city:str):
    max_pages = 0
    ads = []
    with open('./base.json', 'r') as f:
        data = json.load(f)
        max_pages = data["max_pages"]
        ads = data["ads"]
    with safe_open_w("./data/{}/{}.json".format(city,city)) as json_file:
        json.dump(ads, json_file)
    if max_pages > 1 :
        os.system('./script.sh 1 100 {} {}'.format(city,max_pages))
    return {"status": "SUCCESS"}


@app.get("/notify/{offset}/{max_pages}/{city}")
def notify(offset:int,max_pages:int,city:str):
    new_ads = []
    with open('./base.json', 'r') as f:
        data = json.load(f)
        new_ads = data["ads"]
    ads = []
    city_file = './data/{}/{}.json'.format(city,city)
    with open(city_file, 'r') as json_file:
        ads = json.load(json_file)
        ads.extend(new_ads)

    with open(city_file, 'w') as json_file:
        json.dump(ads, json_file)


    if ((offset+100) / 100) < max_pages:
        os.system('./script.sh 1 {} {} {}'.format(offset+100,city,max_pages))



@app.post("/")
def get_cookies(dataFromExtension: DataFromExtension):
    #cookies_dict = processCookies(cookies.cookies)
    print(dataFromExtension.city)
    os.system('./script.sh "{}" 0 {}'.format(dataFromExtension.cookies,dataFromExtension.city))

