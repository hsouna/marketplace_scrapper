#!/bin/bash

#curl -X POST -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' -H 'Accept: */*' -H 'content-type: application/json' -H 'Origin: https://www.leboncoin.fr' -H 'Cookie: datadome=RkoBesqIkXPzXFl6jTii~nius1aGYaWwqzjQitBBKQcXA2Rd67GUwwnqpu2kGhICRp4l~N9MeeEds_6NasXMdpbhgf7bL1CIp__ZfbLOqUHZvenIAbnnuOkRYXZaVpe; didomi_token=eyJ1c2VyX2lkIjoiMTdmOWYzMTEtNDFmNC02MzM3LTkyNzgtMmM2Y2Q5OGUyOWMyIiwiY3JlYXRlZCI6IjIwMjItMDMtMThUMjI6NDY6MzUuOTQzWiIsInVwZGF0ZWQiOiIyMDIyLTAzLTE4VDIyOjQ2OjM1Ljk0M1oiLCJ2ZW5kb3JzIjp7ImVuYWJsZWQiOlsiZ29vZ2xlIiwiYzpyb2NreW91IiwiYzpwdWJvY2Vhbi1iNkJKTXRzZSIsImM6cnRhcmdldC1HZWZNVnlpQyIsImM6c2NoaWJzdGVkLU1RUFhhcXloIiwiYzpncmVlbmhvdXNlLVFLYkdCa3M0IiwiYzpyZWFsemVpdGctYjZLQ2t4eVYiLCJjOmxlbW9tZWRpYS16YllocDJRYyIsImM6eW9ybWVkaWFzLXFuQldoUXlTIiwiYzpzYW5vbWEiLCJjOnJhZHZlcnRpcy1TSnBhMjVIOCIsImM6cXdlcnRpemUtemRuZ0UyaHgiLCJjOnJldmxpZnRlci1jUnBNbnA1eCIsImM6cmVzZWFyY2gtbm93IiwiYzp3aGVuZXZlcm0tOFZZaHdiMlAiLCJjOmFkbW90aW9uIiwiYzp0aGlyZHByZXNlLVNzS3dtSFZLIiwiYzppbnRvd293aW4tcWF6dDV0R2kiLCJjOmRpZG9taSIsImM6anF1ZXJ5IiwiYzphYi10YXN0eSIsImM6bW9iaWZ5IiwiYzpsYmNmcmFuY2UiLCJjOnBvd2VybGluay1BM0xlRE1GNCJdfSwicHVycG9zZXMiOnsiZW5hYmxlZCI6WyJleHBlcmllbmNldXRpbGlzYXRldXIiLCJtZXN1cmVhdWRpZW5jZSIsInBlcnNvbm5hbGlzYXRpb25tYXJrZXRpbmciLCJwZXJzb25uYWxpc2F0aW9uY29udGVudSIsInByaXgiXX0sInZlbmRvcnNfbGkiOnsiZW5hYmxlZCI6WyJnb29nbGUiXX0sInZlcnNpb24iOjIsImFjIjoiRExXQThBRUlBSXdBV1FCLWdHRkFQeUFra0JKWUVBd0lrZ1NrQXR5QnhBRHB3SFZnUlVBam5CSk9DV3NGQ0lLTFFWemdzRkJiZUM0d0Z5d01CZ1lSQXhOQmxxQUEuRExXQTZBRUlBSXdBX1FEQ2dINUFTU0Frc0NBWUVTUUpTQVc1QTRnQjA0RHF3SXFBUnpna25CTFdDaEVGRm9LNXdXQ2d0dkJjWUM1WUdBd01JZ1ltZ3kxQSJ9; __Secure-InstanceId=4d76c0e9-bbfc-431c-802c-8f8dfcdee6cd; utag_main=v_id:017f9f313278000241c98b3ab7910004c001900900bd0$_sn:2$_ss:1$_st:1647654303331$_pn:1%3Bexp-session$ses_id:1647652224103%3Bexp-session; _hjSessionUser_2783207=eyJpZCI6IjI0NDYzODI1LTQ2YjgtNTJjNi05NzY1LTM5OTU2ZDQ2YTA1YyIsImNyZWF0ZWQiOjE2NDc2NDMyNzk3NTIsImV4aXN0aW5nIjp0cnVlfQ==; euconsent-v2=CPWBfMAPWBfMAAHABBENCECgAP_AAHLAAAAAIAtB_G_dTyPi-f59YvtwYQ1P4VQnoyACjgaNgwwJiRLBMI0EgmAIKAHqAAACIBAEICJAAQBlCAHAAAAA4IEAASMMAAAAIBAIIgCAAEAAAmJICABZC5AAAQAQgkwAABUAgAICABMgSDAAAAAAFAAAAAgAAAAAAAAAAAAAQAAAAAAAAggCACYalxAA2JY4EkgaVAgARhAEAUAIAKKAIWCCAgJEAAgjAAUQAgAAIoAAAAAACAgBgAAAAEACEAAAADggEABAAgAAAAgAAgAAAAAQAAAYAAAAAABAAAAAAEABAAABQCAAAIAEABIEAAQAAAEAAAAAAAAAEAgAAAAAAAAAAAAAAACAGKAAwABBEsYABgACCJZAADAAEESw.f_gADlgAAAAA; __gads=ID=c38c05f94ecb2223-222449cabdd10047:T=1647643597:S=ALNI_MaG898MP79UB6TP7mj8AHKML0EC5g; cto_bundle=d4v3yF9pUG9yOHMyNjU3Nkh4cFoxRGphNlY0aE9JOE9LZ2hYZU0lMkZsSGxKWWtPclZPdWxTSExnQWdEU2ZiQXclMkJTJTJGJTJGSEFyRWx4UWx5UjNaaEpMU2QlMkJac3ppN2wySWNFZkNTT3NaajdJaUozJTJCaHhNbTVGV1RvRWpIbktGU1hsVEVHeVdLMnFsTDYlMkJCOU1aM3dEb0R3bkYlMkJ1SWNnJTNEJTNE; ry_ry-l3b0nco_realytics=eyJpZCI6InJ5XzNEMUI2NkQ0LTNDMEMtNEM5Qi1BQTc4LTdCQTlCQUMyMkUxRSIsImNpZCI6bnVsbCwiZXhwIjoxNjc5MTc5OTc1MzYxLCJjcyI6bnVsbH0%3D; _gcl_au=1.1.1202986735.1647643977; include_in_experiment=true; adview_clickmeter=search__listing__0__067db085-2c67-4880-a214-a743f13562d9; ry_ry-l3b0nco_so_realytics=eyJpZCI6InJ5XzNEMUI2NkQ0LTNDMEMtNEM5Qi1BQTc4LTdCQTlCQUMyMkUxRSIsImNpZCI6bnVsbCwib3JpZ2luIjp0cnVlLCJyZWYiOm51bGwsImNvbnQiOm51bGwsIm5zIjpmYWxzZX0%3D; _hjSession_2783207=eyJpZCI6Ijc5MGZhMTU1LWIzODItNGFlOC1iODA2LTEzYTA1YTVkMDFhYSIsImNyZWF0ZWQiOjE2NDc2NTIyMjYyNDUsImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=1; _fbp=fb.1.1647652232451.1292225567' -d '{"owner_type":"all","limit":35,"limit_alu":3,"sort_by":"relevance","sort_order":"desc","filters":{"enums":{"ad_type":["offer"]},"location":{"locations":[{"locationType":"city","city":"Lyon","label":"Lyon (toute la ville)","area":{"lat":45.74578907434404,"lng":4.853361113809419,"default_radius":5875}}]},"keywords":{"text":"location","parrot_used":5}},"offset":0,"listing_source":"direct-search"}' --tlsv1.3 --tls13-ciphers TLS_AES_256_GCM_SHA384 https://api.leboncoin.fr/finder/search > here





COOKIE=${1}
OFFSET=${2}
CITY=${3}
MAX_PAGES=${4}

#If we already trigered the scrap, then we have stored the retured cookie in the cookies file
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
