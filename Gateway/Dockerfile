﻿# Pulls a build image for compiling your
# application inside a container.
FROM microsoft/dotnet:sdk AS build-env
WORKDIR /app

# Copy csproj into the docker container
COPY *.csproj ./

# Downloads the nuget packages  
# required by your application into
# the application container.
RUN dotnet restore

# Copy remaining source code
COPY . ./

# Builds your application.
RUN dotnet publish -c Release -o out

# Pulls a runtime image for your application.
FROM microsoft/dotnet:aspnetcore-runtime

# FROM mcr.microsoft.com/dotnet/core/aspnet:2.2


# Sets the execution context of 
# the docker commands
WORKDIR /app

# Copies the output files from the
# /app/out folder of the build-env image 
# to the runtime image.
COPY --from=build-env /app/out .

# Command that will run the application on
# container startup. NOTE: Replace aspnetapp.dll
# with the name of each project eg (Authentication.dll,
# Ledger.dll, Catalog.dll and Gateway.dll)
ENTRYPOINT ["dotnet", "Gateway.dll"]