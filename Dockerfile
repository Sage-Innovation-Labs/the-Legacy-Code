FROM oven/bun

WORKDIR /usr/src/app

COPY package*.json bun.lockb ./
RUN bun install
COPY . .

EXPOSE 4321/tcp

CMD [ "bun", "start", "--", "--host",  "0.0.0.0" ]