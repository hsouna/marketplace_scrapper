#!/bin/bash


COOKIE=${1}
OFFSET=${2}
CITY=${3}
MAX_PAGES=${4}

#If we already trigered the scrape, then we have stored the retured cookie in the cookies file, so COOKIE=1
if [ "${COOKIE}" = "1" ]; then
    curl -X POST -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' \
        -H 'Accept: */*' -H 'content-type: application/json' -H 'Origin: https://www.leboncoin.fr' \
        -d '{"owner_type":"all","limit":100,"sort_by":"relevance","sort_order":"desc","filters":{"enums":{"ad_type":["offer"]},"category": {"id": "10"},"location":{"locations":[{"locationType":"city","city":"'${CITY}'"}]},"keywords":{"text":"location","parrot_used":5}},"offset":'${OFFSET}',"listing_source":"pagination"}' \
        --tlsv1.3 --tls13-ciphers TLS_AES_256_GCM_SHA384 -b cookie -c cookie https://api.leboncoin.fr/finder/search > base.json
else
    curl -X POST -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' \
        -H 'Accept: */*' -H 'content-type: application/json' -H 'Origin: https://www.leboncoin.fr' \
        -H 'Cookie: '"${COOKIE}" \
        -d '{"owner_type":"all","limit":100,"sort_by":"relevance","sort_order":"desc","filters":{"enums":{"ad_type":["offer"]},"category": {"id": "10"},"location":{"locations":[{"locationType":"city","city":"'${CITY}'"}]},"keywords":{"text":"location","parrot_used":5}},"offset":'${OFFSET}',"listing_source":"pagination"}' \
        --tlsv1.3 --tls13-ciphers TLS_AES_256_GCM_SHA384 -c cookie https://api.leboncoin.fr/finder/search > base.json
fi;



if [ "${COOKIE}" = "1" ]; then
    curl localhost:8000/notify/${OFFSET}/${MAX_PAGES}/${CITY}
else
    curl localhost:8000/parse_content/${CITY}
fi;
