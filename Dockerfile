# This should match the version in package.json
FROM mcr.microsoft.com/playwright:v1.36.0-focal
# This should kinda match the node version mentioned in `.nvmrc`
RUN npm install -g n \
    && n 16.20.0

# Install web font
COPY playwright/install-segoe-ui-font.sh .
RUN chmod +x ./install-segoe-ui-font.sh
RUN ./install-segoe-ui-font.sh

COPY package*.json ./

RUN npm install --progress=false --no-fund --legacy-peer-deps \
    && npm cache clean --force

COPY . .

# see: https://github.com/microsoft/playwright/pull/12295
ENV CI=1
# Use node/binary directly, see: https://github.com/goldbergyoni/nodebestpractices/blob/master/sections/docker/bootstrap-using-node.md
ENTRYPOINT ["node", "./node_modules/@playwright/test/cli.js", "test"]
# By default run some spec. One could start up multiple containers from the same image but run just different specs with the CMD
CMD [""]