var app = require('express')();
var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello World!');
}).listen(8080);

const SerialPort = require('serialport')
const Readline = require('@serialport/parser-readline')
const port = new SerialPort('COM3', {baudRate: 115200})

const parser = port.pipe(new Readline({ delimiter: '\r\n' }))
parser.on('data', readSerialData)

function readSerialData(data) {
  console.log(data);
}
