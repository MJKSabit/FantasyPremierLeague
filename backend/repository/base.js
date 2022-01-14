const oracledb = require('oracledb');
oracledb.outFormat = oracledb.OBJECT;

class Repository {
    constructor() {
        this.connection = undefined;
    }

    query = async function (query, params) {
        
        try {
            if (this.connection === undefined)
                this.connection = await oracledb.getConnection();
            let result = await this.connection.execute(query, params);
            return {
                success: true,
                data: result.rows
            }

        } catch (error) {
            console.log(error);
            throw error;
        }
    };
}

exports.Repository = Repository;