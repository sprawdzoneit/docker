# sprawdzone.it
#  https://sprawdzone.it/windows-server-docker-kontenery-na-windows/

# Install Docker Provider
Install-Module DockerMSFTProvider -Force

# Install Docker from provider
Install-Package -Name docker -ProviderName DockerMSFTProvider -Force

# Restart
Restart-Computer

# Check Docker Service
Get-Service Docker

# Check Docker Version
docker version

# Docker Image Download 
docker pull mcr.microsoft.com/windows/servercore:ltsc2022

# Docker Downloaded Images list
docker images

# Docker Run 
docker run mcr.microsoft.com/windows/servercore:ltsc2022

# Docker Run
docker run 903e6f2eff2a

# Check history of runing containers
docker ps

# Check history of runing containers
docker ps -a

# Docker Inspect command to check entry point in ID of image - check your ID
docker inspect 903

# Docker Run in background with a specific name - check your ID
docker run -d --name windowscore 903

# Docker stop container
docker stop 903

# Docker remove container form history - check your ID
docker container rm bf3d

# Docker remove all containers form history
docker container prune

# Docker Run with a specific name and give command hostname - check your ID
docker run --name windowscore 903 hostname

# Docker Run with a specific name and run PowerShell - check your ID
docker run -it 903 --name windowscore PowerShell

# Docker volume - list of commands
docker volume

# Docker volume list
docker volume ls

# Docker new volume create - "dane" is the name
docker volume create dane

# Docker volume check details
docker volume inspect dane

# Docker run interactivly new container with name, mount volume, run PowerShell in
docker run -it --name windowscore --mount source=dane,destination=c:\dane 903 PowerShell

# Docker volume delete
docker volume rm dane
