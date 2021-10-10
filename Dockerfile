FROM mcr.microsoft.com/dotnet/sdk:6.0 AS base

RUN mkdir -p /tars
RUN find . -name *.csproj | xargs tar cvf /tars/csprojFiles.tar

RUN ls -la /tars

COPY /tars/csprojFiles.tar .
RUN tar -xvf csprojFiles.tar