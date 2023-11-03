FROM mcr.microsoft.com/dotnet/sdk:6.0

ENV PATH="$PATH:/root/.dotnet/tools"
RUN mkdir /data && dotnet tool install --global haveibeenpwned-downloader
VOLUME /data
WORKDIR /data

ENTRYPOINT ["haveibeenpwned-downloader"]
