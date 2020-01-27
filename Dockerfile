FROM node:10
RUN apt-get update && apt-get install -y git gcc g++ build-essential && apt-get clean
RUN git clone https://github.com/OriginTrail/houston-v4.git 
WORKDIR houston-v4/
RUN npm install
ENTRYPOINT npm run houston