const oracledb = require("oracledb");

module.exports.connect = async () => {
    await oracledb.createPool({
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        connectString: process.env.DB_CONNECTION_STRING,
        poolMin: 10,
        poolMax: 14,
        poolIncrement: 0,
    });

    oracledb.outFormat = oracledb.OBJECT;

    console.log('Config/Database: Connected to Oracle Database');
}

module.exports.getConnection = async () => (
    await oracledb.getConnection()
)

module.exports.close = async () => {
    await oracledb.getPool().close(0);
}

