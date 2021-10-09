FROM mcr.microsoft.com/dotnet/sdk:6.0 AS base

COPY src/*/*.csproj ./
RUN find . -name *.csproj | xargs tar cvf /src/csprojFiles.tar