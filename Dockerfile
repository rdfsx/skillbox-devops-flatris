FROM node

RUN mkdir /skillbox
COPY . /skillbox

WORKDIR /skillbox

RUN yarn install
RUN yarn test
RUN yarn build
CMD yarn start

EXPOSE 3000
