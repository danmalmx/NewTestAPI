#! /bin/bash
docker run -d -p 52792:80 authentication_api
docker run -d -p 52791:80 catalog_api
docker run -d -p 52790:80 ledger_api
docker run -d -p 52793:80 gateway_api