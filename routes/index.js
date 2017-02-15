var express = require('express');
var router = express.Router();
var url = require('url');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Cforce Api by Reymond' });
});

module.exports = router;

/* Create Employee Service. */
router.post('/cforce/v1/createEmployee', function(req,res,next){
try{
	var reqObj = req.body;	
	console.log(reqObj);
	req.getConnection(function(err, conn){
		if(err)
		{
			console.error('SQL Connection error: ', err);
			return next(err);
		}
		else
		{
			var insertSql = "INSERT INTO employee SET ?";
			var insertValues = {
			"Emp_Name" : reqObj.empName,
			"Role_Id" : reqObj.roleId,
			"Dept_Id" : reqObj.deptId
			};
			var query = conn.query(insertSql, insertValues, function (err, result){
				if(err){
				console.error('SQL error: ', err);
				return next(err);
				}
				console.log(result);
				var Employee_Id = result.insertId;
				res.json({"Emp_id":Employee_Id});
			});
		}
		});
	}
	catch(ex){
	console.error("Internal error:"+ex);
	return next(ex);
	}
});

/* Get Employee Service. */
router.get('/cforce/v1/getEmployeeDetails', function(req, res, next) {
    try {
    	/*var roleId = req.param('roleId');
  		var deptId = req.param('deptId');*/

  		//var query = url.parse(req.url,true).query;
        //console.log(req);
        console.log(req.query);
        console.log(req.query.roleID);
        console.log(req.query.deptID);
        console.log(req.query[0]);
        var roleId = req.query.roleID;

            if (req.query.roleId != undefined) { console.log("why"); }
        else{
            console.log("shit");
        }
        var deptId = req.query.deptID;
        console.log(roleId);
        console.log(deptId);
        req.getConnection(function(err, conn) {
            if (err) {
                console.error('SQL Connection error: ', err);
                return next(err);
            } else {
                console.log("here");
                conn.query('select E.Emp_Name, Date_Format(E.Doj,"%d-%m-%Y") AS DOJ, D.Dept_Name, R.Role_Name from employee E, role R, department D where E.Role_Id = R.Role_Id and E.Dept_Id = D.Dept_Id and E.Role_Id = ? and E.Dept_Id = ? order by DOJ', [roleId,deptId], function(err, rows, fields) {
                 //console.log(query.sql);
                    if (err) {
                        console.error('SQL error: ', err);
                        return next(err);
                    }
                    var resEmp = [];
                    for (var empIndex in rows) {
                        var empObj = rows[empIndex];
                        resEmp.push(empObj);
                    }
                    res.json(resEmp);
                });
            }
        });
    } catch (ex) {
        console.error("Internal error:" + ex);
        return next(ex);
    }
});



/* Get Merchants. */
router.get('/cforce/v1/getMerchants', function(req, res, next) {
    try {

        /*var roleId = req.param('roleId');
        var deptId = req.param('deptId');*/

        //var query = url.parse(req.url,true).query;
        //console.log(req);
        console.log(req.query);
        console.log(req.query.ID);
        var ID = req.query.ID;
        console.log(ID);
        req.getConnection(function(err, conn) {
            if (err) {
                console.error('SQL Connection error: ', err);
                return next(err);
            } else {
                console.log("here");
                conn.query('select * from CMC_Merchant m where m.ID = ?', ID, function(err, rows, fields) {
                 //console.log(query.sql);
                    if (err) {
                        console.error('SQL error: ', err);
                        return next(err);
                    }
                    var resEmp = [];
                    for (var empIndex in rows) {
                        var empObj = rows[empIndex];
                        resEmp.push(empObj);
                    }
                    res.json(resEmp);
                });
            }
        });
    } catch (ex) {
        console.error("Internal error:" + ex);
        return next(ex);
    }
});

/* Get Merchant details. */
router.get('/cforce/v1/getMerchantsDetails', function(req, res, next) {
    try {

        /*var roleId = req.param('roleId');
        var deptId = req.param('deptId');*/

        //var query = url.parse(req.url,true).query;
        //console.log(req);
        console.log(req.query);
        console.log(req.query.ID);
        var ID = req.query.ID;
        console.log(ID);
        req.getConnection(function(err, conn) {
            if (err) {
                console.error('SQL Connection error: ', err);
                return next(err);
            } else {
                console.log("here");
                conn.query('select * from CMC_Merchant m where m.ID = ?', ID, function(err, rows, fields) {
                 //console.log(query.sql);
                    if (err) {
                        console.error('SQL error: ', err);
                        return next(err);
                    }
                    var resEmp = [];
                    for (var empIndex in rows) {
                        var empObj = rows[empIndex];
                        resEmp.push(empObj);
                    }
                    res.json(resEmp);
                });
            }
        });
    } catch (ex) {
        console.error("Internal error:" + ex);
        return next(ex);
    }
});

