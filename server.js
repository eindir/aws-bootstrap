const { hostname } = require('os');
const http = require('http');
const message = 'The time is: '; 
const port = 8080; 
const server = http.createServer((req, res) => { 
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  const d = new Date();
  res.end(message + d.toLocaleTimeString());
});
  server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname()}:${port}/`);
});