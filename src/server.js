import http from 'node:http'

const server = http.createServer((req, res) => {
    res.end(process.env.MESSAGE || 'Hello World')
})

server.listen(process.env.PORT || 3333); 