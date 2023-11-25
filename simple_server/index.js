const express = require('express')
const app = express()
const port = process.env.port || 3030

app.get('/', (req, res) => {
  res.status(200).send('Hello Graylog, my name is custlynotts!')
})

app.get('/healthz', (req, res) => {
  res.status(200).send()
})

app.listen(port, () => {
  console.log('Simple Server listening on port ${port}')
})
