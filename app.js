const express = require('express');
const app = express();
const pp = require(`./pp.js`);

const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hello World2222')
})

app.get('/pp', (req, res) => {
    pp();
    res.send('Hello World!!!!!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})