FROM mcr.microsoft.com/dotnet/sdk:6.0 AS base
WORKDIR /sln

# RUN mkdir -p tars
COPY src/*/*.csproj ./
COPY src/*.sln ./

# Move copied csproj file into appropriate project directories
RUN cat webapp.sln \
| grep "\.csproj" \
| awk '{print $4}' \
| sed -e 's/[",]//g' \
| sed 's#\\#/#g' \
| xargs -I {} sh -c 'mkdir -p $(dirname {}) && mv $(basename {}) $(dirname {})/'

# RUN find . -name '*.csproj' | xargs tar cvf /tars/csprojFiles.tar

# RUN ls -la tars

# RUN tar -xvf tars/csprojFiles.tar
RUN ls -la 
RUN ls -la webapp1
RUN dotnet restore webapp1/webapp1.csproj

RUN dotnet build webapp1/webapp1.csproj --no-restore

