var http = require('http');
var PORT = process.argv[2] || 8088;

function handleRequest(request, response) {
    response.end('Hit:' + request.url);
}

var server = http.createServer(handleRequest);

server.listen(PORT, function() {
    console.log("Server listening on: http://localhost:%s", PORT);
});
