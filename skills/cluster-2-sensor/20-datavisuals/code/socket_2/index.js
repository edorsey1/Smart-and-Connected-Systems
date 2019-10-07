var app = require('express')();
var http = require('http').createServer(app);
var io = require('socket.io')(http);

var data = [];
var data_AMZN = [];
var data_FB = [];
var data_GOOGL = [];
var data_MSFT = [];

// Chart formatting
function toolTipFormatter(e) {
  var str = "";
  var total = 0 ;
  var str3;
  var str2 ;
  for (var i = 0; i < e.entries.length; i++){
    var str1 = "<span style= \"color:"+e.entries[i].dataSeries.color + "\">" + e.entries[i].dataSeries.name + "</span>: <strong>"+  e.entries[i].dataPoint.y + "</strong> <br/>" ;
    total = e.entries[i].dataPoint.y + total;
    str = str.concat(str1);
  }
  str2 = "<strong>" + e.entries[0].dataPoint.label + "</strong> <br/>";
  str3 = "<span style = \"color:Tomato\">Total: </span><strong>" + total + "</strong><br/>";
  return (str2.concat(str)).concat(str3);
}

function toggleDataSeries(e) {
  if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
    e.dataSeries.visible = false;
  }
  else {
    e.dataSeries.visible = true;
  }
  chart.render();
}

// The chart!
var chartMake = {
  	animationEnabled: true,
  	title:{
  		text: "Closing Stock Prices of Big Tech"
  	},
  	axisY: {
  		title: "Closing"
  	},
  	legend: {
  		cursor:"pointer",
  		itemclick : toggleDataSeries
  	},
  	toolTip: {
  		shared: true,
  		content: toolTipFormatter
  	},
  	data: [{
  		type: "bar",
  		showInLegend: true,
  		name: "AMZN",
  		color: "yellow",
  		dataPoints: data_AMZN
  	},
  	{
  		type: "bar",
  		showInLegend: true,
  		name: "FB",
  		color: "blue",
  		dataPoints: data_FB
  	},
  	{
  		type: "bar",
  		showInLegend: true,
  		name: "GOOGL",
  		color: "red",
  		dataPoints: data_GOOGL
  	},
    {
  		type: "bar",
  		showInLegend: true,
  		name: "MSFT",
  		color: "green",
  		dataPoints: data_MSFT
  	}]
};

// Gets index.html for webpage and stocks-csv.txt for canvas data
app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
  app.get('/data', function(req, res) {
    res.sendFile(__dirname + '/stocks-csv.txt');
  });
});

//File io stuff
var fs = require('fs')
  , filename = __dirname + '/stocks-csv.txt';
var csv_read = fs.readFileSync(filename, 'utf8').toString().split("\n");
for (i=1; i<csv_read.length-1; i++)
{
  data[i-1] = csv_read[i];
}

// Loads from data struct to each company struct
for (i=0; i<data.length-1; i=i+4)
{
  points_AMZN = data[i].split(',');
  points_FB = data[i+1].split(',');
  points_GOOGL = data[i+2].split(',');
  points_MSFT = data[i+3].split(',');

  data_AMZN.push({
    date: parseFloat(points_AMZN[0]),
    val: parseFloat(points_AMZN[2])
  });
  data_FB.push({
    date: parseFloat(points_FB[0]),
    val: parseFloat(points_FB[2])
  });
  data_GOOGL.push({
    date: parseFloat(points_GOOGL[0]),
    val: parseFloat(points_GOOGL[2])
  });
  data_MSFT.push({
    date: parseFloat(points_MSFT[0]),
    val: parseFloat(points_MSFT[2])
  });
}

// Socket.io stuff
io.on('connection', function(socket){
  console.log('user connected');
  io.emit('dataMsg', data);

  socket.on('disconnect', function(){
    console.log('user disconnected');
  });
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});
