FROM debian:11
RUN apt update; apt install -y wget pass
COPY gpg-gen-key.properties .
RUN gpg --batch --generate-key gpg-gen-key.properties
RUN pass init dummy.user@foo.bar
RUN wget https://proton.me/download/ie/protonmail-import-export-app_1.3.3-1_amd64.deb
RUN apt install -y -f ./protonmail-import-export-app_1.3.3-1_amd64.deb && rm protonmail-import-export-app_1.3.3-1_amd64.deb
CMD protonmail-import-export-app -c 
