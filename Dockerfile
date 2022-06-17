FROM node:erbium-alpine3.14 as build

ENV PATH /app/node_modules/.bin:$PATH

COPY e_app/package.json /app/
COPY e_app/package-lock.json /app/
WORKDIR /app
RUN npm ci --silent && npm install react-scripts@3.4.1 -g --silent

COPY e_app/ /app/

RUN npm run build

# production environment
FROM nginx:stable-alpine

COPY --from=build /app/build /usr/share/nginx/html

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]