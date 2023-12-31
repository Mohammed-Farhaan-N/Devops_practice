FROM node:18-alpine as petto

WORKDIR /Pettogram

COPY . /Pettogram

RUN npm install 


FROM petto as prod 

COPY  --from=petto /Pettogram .

CMD ["npm" ,"run" ,"dev"] 

EXPOSE 4000
