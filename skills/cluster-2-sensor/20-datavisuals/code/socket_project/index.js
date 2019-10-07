var app = require('express')();
var http = require('http').createServer(app);
var io = require('socket.io')(http);
var fs = require('fs');

// Gets index.html for webpage and stocks-csv.txt for canvas data
app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
  app.get('/data', function(req, res) {
    res.sendFile(__dirname + '/stocks-csv.txt');
  });
});

//File io stuff
var filename = __dirname + '/stocks-csv.txt';
var csv_read = fs.readFileSync(filename, 'utf8').toString().split("\n");
var data = [];
for (i=1; i<csv_read.length-1; i++)
{
  data[i-1] = csv_read[i];
  console.log(data[i-1]);
}

// Socket.io stuff
io.on('connection', function(socket){
  console.log('user connected');
  io.emit('transmit_data', data);
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});
