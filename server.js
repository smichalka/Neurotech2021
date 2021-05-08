var express = require('express')
var bodyParser = require('body-parser')
var app = express();

var port = process.env.PORT || 8080;

app.use(express.static(__dirname + '/public'));
app.use(bodyParser.urlencoded({extended: false}))

app.get('/', function(req, res) {
	res.render('index');
})

app.post('/', function(req, res) {
	const body = req.body.choice
	res.set('Content-Type', 'text/plain')
	res.send('You sent: ${body} to Express')
	console.log('got post!')
})

app.listen(port, function() {
	console.log('app running')
})
