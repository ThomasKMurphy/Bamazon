var mysql = require('mysql');
var inquirer = require('inquirer');

// var fs = require('fs');

var connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '',
  database: 'bamazonDB'
});

connection.connect(function(error) {
  if (error) throw error;
  console.log('\nConnection Successful!\n');
  displayTable();
});

var displayTable = function() {
  connection.query('SELECT * FROM products', function(error, response) {
    for (var i = 0; i < response.length; i++) {
      console.log(
        response[i].item_id + " | " +
        response[i].product_name + " | " +
        response[i].department_name + " | " + '$' +
        response[i].price + " | " + 'Quantity: ' +
        response[i].stock_quantity + "\n");
    }
    promptCustomer(response);
  })
}

var promptCustomer = function(response) {
  inquirer.prompt([{
    name: 'choice',
    type: 'input',
    message: 'What would you like to purchase? Enter product name.'
  }]).then(function(answer) {
    var correct = false;
    for (var i = 0; i < response.length; i++) {
      if (response[i].product_name === answer.choice) {
        correct = true;
        var product = answer.choice;
        var id = i;
        inquirer.prompt({
          name: 'quantity',
          type: 'input',
          message: 'How many would you like to purchase?',
          validate: function(value) {
            if (isNaN(value) === false) {
              return true;
            } else {
              return false;
            }
          }
        }).then(function(answer) {
          if ((response[id].stock_quantity - answer.quantity) > 0) {
            connection.query("UPDATE products SET stock_quantity='" + 
              (response[id].stock_quantity - answer.quantity) + 
              "' WHERE product_name='" + product + "'", function(error, response2) {
              console.log('\nProduct Purchased!');
              console.log("Total: $" + response[id].price * answer.quantity + "\n");
              displayTable();
            })
          } else {
            console.log('\nSorry, insufficient stock quantity.\n');
            promptCustomer(response);
          }
        })
      }
    }
    if (i === response.length && correct === false) {
      console.log('\nTry the real Amazon.\n');
      promptCustomer(response);
    }
  })
};