#! /bin/bash 
docker build -t authentication_api ./Authentication/
docker build -t ledger_api ./Ledger/
docker build -t catalog_api ./Catalog/
docker build -t gateway_api ./Gateway/