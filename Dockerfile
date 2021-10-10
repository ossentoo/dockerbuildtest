FROM mcr.microsoft.com/dotnet/sdk:6.0 AS base
WORKDIR /sln

# RUN mkdir -p tars
COPY src/*/*.csproj ./
RUN for file in $(ls *.csproj); do mkdir -p src/${file%.*}/ && mv $file src/${file%.*}/; done

# RUN find . -name '*.csproj' | xargs tar cvf /tars/csprojFiles.tar

# RUN ls -la tars

# RUN tar -xvf tars/csprojFiles.tar
RUN ls -la 
RUN dotnet restore src/webapp1/webapp1.csproj

RUN dotnet build src/webapp1/webapp1.csproj --no-restore

