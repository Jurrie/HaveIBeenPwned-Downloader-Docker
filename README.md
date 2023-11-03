# HaveIBeenPwned-Downloader in a Docker image

This is just a Docker image for haveibeenpwned-downloader.
See [HaveIBeenPwned/PwnedPasswordsDownloader on Github](https://github.com/HaveIBeenPwned/PwnedPasswordsDownloader) for information on the actual project.

## Building the image yourself
Checkout this repository, and do a:

`docker build . -t haveibeenpwned-downloader:latest`

## Using the image
First create a volume where the downloaded data will be stored:

`docker volume create --label haveibeenpwned-downloader`

Then run the image to retrieve the data:

`docker run --rm --name haveibeenpwned-downloader -v haveibeenpwned-downloader:/data haveibeenpwned-downloader`

The data will be in your volume.
