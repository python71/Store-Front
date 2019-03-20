var inquirer = require("inquirer");
var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "bamazon_db"
});
connection.connect(function (err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    userSearch();
    return;
  }
  // console.log("connected as id " + connection.threadId);
});

function userSearch() {
  inquirer
    .prompt([{
      type: "input",
      name: "item_id",
      message: "Please select the Item # that you would like to purchase?\n",
    }, {
      type: "input",
      name: "quantity",
      message: "How many would you like?",
    }])
    .then(function (input) {
      var item = input.item_id;
      var quantity = input.quantity;
      console.log("Item Selected: " + input.item_id);
      console.log("Quantity: " + quantity);
      let customerQuery = "SELECT * FROM bamazon_db.products WHERE ?";
      connection.query(customerQuery, {
        item_id: item
      }, function (err, data) {
        if (err) throw err;
        if (data.length < 1) {
          console.log("PLEASE MAKE A SELECTION\n");
          dispProducts();
        } else {
          customerItemSelected = data[0];
          // console.log(customerItemSelected)
          if (quantity <= customerItemSelected.stock_quantity) {
            console.log(customerItemSelected.product_name + " was added to your cart.");
            var updatedQuantity = 'UPDATE products SET stock_quantity = ' + (customerItemSelected.stock_quantity - quantity) + ' WHERE item_id = ' + item;
            connection.query(updatedQuantity, function (err, data) {
              if (err) throw err;
              console.log("Your Total Cost is: $" + quantity * customerItemSelected.price);
              process.exit();
            })
          } else {
            console.log("INSUFFICIENT QUANTITY!!!!");
          }
        }
      })
    });
}

function dispProducts() {
  var query = "SELECT * FROM bamazon_db.products;";
  connection.query(query, function (err, data) {
    console.log("+---------+------------------------------------------------------------------------------------------------------+-------------+----------+");
    console.log("| Item ID | NAME                                                                                                 | DEPARTMENT  |  PRICE   |");
    console.log("+---------+------------------------------------------------------------------------------------------------------+-------------+----------+");
    // var strOutput = "";
    for (let i = 0; i < data.length; i++) {
      let item_id = data[i].item_id.toString();
      let product_name = data[i].product_name;
      let department_name = data[i].department_name;
      let price = "$" + data[i].price;
      while (item_id.length < 2) {
        item_id = " " + item_id;
      }
      while (product_name.length < 100) {
        product_name = product_name + " ";
      }
      while (department_name.length < 11) {
        department_name = department_name + " ";
      }
      while (price.length < 8) {
        price = price + " ";
      }
      console.log("|  " + item_id + "     | " + product_name + " | " + department_name + " | " + price + " |");
    }
    console.log("+---------+------------------------------------------------------------------------------------------------------+-------------+----------+\n\n\n");
  })
  // userSearch();
}

dispProducts();
userSearch();