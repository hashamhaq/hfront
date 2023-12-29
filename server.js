const express = require('express');
const app = express();
const port = 5001;

app.get('/', (req, res) => res.send('version 3111111'));

app.listen(port, () => console.log(`App 1 listening on port ${port}`));
