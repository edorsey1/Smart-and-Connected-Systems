var app = require('express')();
var http = require('http').Server(app);

function toogleDataSeries(e){
	if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	} else{
		e.dataSeries.visible = true;
	}
	chart.render();
}

var data_AMZN = [];
var data_FB = [];
var data_GOOGL = [];
var data_MSFT = [];

var chartOptions = {
	title: {
		text: "Closing Stock Data for Top 4 Tech Companies"
	},
	axisX: {
    interval: 1
	},
	axisY: {
		title: "Closing Price",
		prefix: "$",
	},
	toolTip: {
		shared: true
	},
	legend: {
		cursor: "pointer",
		verticalAlign: "top",
		horizontalAlign: "center",
		dockInsidePlotArea: true,
		itemclick: toogleDataSeries
	},
	data: [{
		type:"line",
		name: "AMZN",
		color: "yellow",
		showInLegend: true,
		markerSize: 0,
		yValueFormatString: "$#,###",
		dataPoints: data_AMZN
	},
	{
		type: "line",
		name: "FB",
		color: "blue",
		showInLegend: true,
		markerSize: 0,
		yValueFormatString: "$#,###",
		dataPoints: data_FB
	},
	{
		type: "line",
		name: "GOOGL",
		color: "green",
		showInLegend: true,
		markerSize: 0,
		yValueFormatString: "$#,###",
		dataPoints: data_GOOGL
	},
	{
		type: "line",
		name: "MSFT",
		color: "red",
		showInLegend: true,
		markerSize: 0,
		yValueFormatString: "$#,###",
		dataPoints: data_MSFT
	}]
};

var io = require('socket.io')(http);

app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
  app.get('/data', function(req, res) {
    res.sendFile(__dirname + '/stocks.csv');
  });
});

var fs = require('fs')
  , filename = __dirname + '/stocks.csv';
var csv_lines = fs.readFileSync(filename, 'utf8').toString().split("\n");
var data = [];
for (i=1;i<csv_lines.length; i++) {
	data = csv_lines[i].split(",");
	switch (data[1]) {
		case 'AMZN':
			data_AMZN.push({
				x: parseInt(data[0], 10),
				y: parseInt(data[2], 10)
			});
			break;
		case 'FB':
			data_FB.push({
				x: parseInt(data[0], 10),
				y: parseInt(data[2], 10)
			});
			break;
		case 'GOOGL':
			data_GOOGL.push({
				x: parseInt(data[0], 10),
				y: parseInt(data[2], 10)
			});
			break;
		case 'MSFT':
			data_MSFT.push({
				x: parseInt(data[0], 10),
				y: parseInt(data[2], 10)
			});
			break;
		default:
			console.log("Error getting data");
			break;
	}
}

io.on('connection', function(socket){
  io.emit('dataMsg', chartOptions);

  socket.on('disconnect', function(){
    console.log('user disconnected');
  });
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});
