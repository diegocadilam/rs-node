FROM node:latest

WORKDIR /app

ENV PORT=3001
ENV MESSAGE="Hello Docker!"

COPY . .

HEALTHCHECK --interval=10s --timeout=5s --start-period=5s --retries=3 \
    CMD [ "curl", "-f", "http:localhost:8080" ]

CMD ["node", "src/server.js"]

