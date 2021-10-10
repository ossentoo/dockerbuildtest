FROM mcr.microsoft.com/dotnet/sdk:6.0 AS base

COPY src/*/*.csproj ./

RUN find . -name '*.csproj' | xargs tar cvf /tars/csprojFiles.tar

RUN ls -la /tars

RUN tar -xvf csprojFiles.tar

RUN dotnet restore src/webapp1/webapp1.csproj
