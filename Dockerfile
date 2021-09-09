FROM arm64v8/node:14.17.6-stretch

ENV NO_COLOR=1

WORKDIR /usr/src/app

COPY package*.json ./
COPY .npmrc ./
RUN npm install --loglevel info package*.json


# RUN npm install --loglevel verbose --legacy-peer-deps package.js
# RUN npm install --loglevel info --legacy-peer-deps package.js

# RUN npm install --loglevel http --legacy-peer-deps package.json
# RUN npm install --loglevel http --legacy-peer-deps
# RUN npm install --loglevel verbose

# RUN npm list

# RUN node --version

# RUN npm install package.json
# RUN exit 1

COPY . ./

EXPOSE 8080

# RUN ls -al

# CMD [ "node", "server.js" ]
# CMD [ "node",  "./build-config/build-config-rsa-webapp-demo.js" ]
# CMD [ "npm", "list" ]

# ENTRYPOINT ["/usr/local/bin/node"]
ENTRYPOINT ["/usr/local/bin/npm"]

CMD [ "run", "start" ]
# CMD [ "install" ]