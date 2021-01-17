const express = require('express');
// const routes = require('./routes/api')
const bodyParser = require('body-parser');

const app = express();

// makes data of type: json
app.use(bodyParser.json());

app.use('/api', require('./routes/api'));

// Handling the incompelte required field error 
app.use(function(err, req, res, next){
    console.log(err);
    res.status(422);
    res.send(err.message);
});

app.listen(process.env.port || 3000, () => {console.log('listening')});
