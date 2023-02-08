const express = require('express');
const app = express();

const path = require("path");
const ejs = require("express");

const port = 8080


app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs')

app.use(express.static(path.join(__dirname, 'assets')))
app.use(express.static(path.join(__dirname, 'views')))
app.use('/assets', express.static('assets'))

app.listen(8080)


app.get('/', (req, res) => {
    res.render('index');
    
})
