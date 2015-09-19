var express = require('express');
var app = express();

app.get('/', function (req, res) {
  console.log('GET /');
  res.send('Hello world');
});

app.get('/exit', function(req, res) {
  process.exit(1); // Uncaught Fatal Exception
});

app.listen(3000, function () {
  console.log('Server is running at 3000 port.');
});

