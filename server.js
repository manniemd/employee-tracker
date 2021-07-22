const mysql = require("mysql");
const inquirer = require("inquirer");

const PORT = process.env.PORT || 3001;



// Connect to database
const db = mysql.createConnection(
    {
        host: 'localhost',
        // MySQL username,
        user: 'root',
        // {TODO: Add your MySQL password}
        password: '',
        database: 'inventory_db'
    },
    console.log(`Connected to the inventory_db database.`)
);


let deletedRow = 2;

db.query(`DELETE FROM books WHERE id = ?`, deletedRow, (err, result) => {
    if (err) {
        console.log(err);
    }
    console.log(result);
});

function options() {
    inquirer
        .prompt({
            name: 'action',
            type: 'list',
            message: 'Welcome to our employee database! What would you like to do?',
            choices: [
                'View all employees',
                'View all departments',
                'View all roles',
                'Add an employee',
                'Add a department',
                'Add a role',
                'Update employee role',
                'Delete an employee',
                'EXIT'
            ]
        }).then(function (answer) {
            switch (answer.action) {
                case 'View all employees':
                    viewEmployees();
                    break;
                case 'View all departments':
                    viewDepartments();
                    break;
                case 'View all roles':
                    viewRoles();
                    break;
                case 'Add an employee':
                    addEmployee();
                    break;
                case 'Add a department':
                    addDepartment();
                    break;
                case 'Add a role':
                    addRole();
                    break;
                case 'Update employee role':
                    updateRole();
                    break;
                case 'Delete an employee':
                    deleteEmployee();
                    break;
                case 'EXIT':
                    exitApp();
                    break;
                default:
                    break;
            }
        })
};
