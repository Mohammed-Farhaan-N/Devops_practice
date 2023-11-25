FROM node:18-alpine as petto

WORKDIR /Pettogram

COPY . /Pettogram

RUN npm install 


FROM petto as prod 

CMD ["npm" ,"run" ,"dev"] 

EXPOSE 3000
