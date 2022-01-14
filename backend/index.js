const app = require('./app');

require('dotenv').config();
require("./config/database").connect();

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});