var pool = require("./bd");
var md5 = require("md5");

async function getUserAndPassword(user, password) {
    try {
        var query = "selecto * from usuarios where nombre = ? and password = ? limit 1";
        var rows = await pool.query(query, [user, md5 (password)]);
        return rows[0];

    } catch (error) {
        console.log(lacagaste)
    }
}


module.exports = { getUserAndPassword }