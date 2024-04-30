<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/inventory.css">
    <title>JFKL Store</title>
</head>
<body>
    <div class="navbar">
        <div class="left">
            <div class="shape">
                
            </div>
            <div class="logo">
                <img src="../assets/storeLogo.svg" alt="">
                <p>JFKL Store</p>
            </div>
        </div>

        <div class="searchBar">
            <input type="text" id="search" placeholder="Search">
        </div>

        <div class="right">
            <div class="todayGrossSaleLabel">
                <p>Today's Gross Sale: </p>
            </div>
            <div class="todayGrossSale">
                <p><strong>P969.00</strong></p>
            </div>
            <div class="date">
                <p>May 13, 2024</p>
            </div>
        </div>
    </div>

    <div class="sideBar">
            <div class="sbPOS">
                <button>
                    <img src="../assets/POS.svg" alt=""><br>
                    <strong>POS</strong>
                </button>
            </div>
            <div class="sbInventory">
                <button>
                    <img src="../assets/inventory.svg" alt=""><br>
                    <strong>Inventory</strong>
                </button>
            </div>
            <div class="sbSales">
                <button>
                    <img src="../assets/sales.svg" alt=""><br>
                    <strong>Sales</strong>
                </button>
            </div>
        </div>

    <div class="mainContainer">
        <div class="productDisplay">
            
            <div class="delAddProduct">
                <button class="removeProduct">Remove Product</button>
                <button class="addProduct">Add Product</button>
            </div>

            <div class="category" id="categoryContainer">
                <button class="categoryBtn">All</button>
                <button class="categoryBtn">Canned Goods</button>
                <button class="categoryBtn">Coffee</button>
                <button class="categoryBtn">Biscuits</button>
                <button class="categoryBtn">Ice Cream</button>
                <button class="categoryBtn">Bread</button>
                <button class="categoryBtn">Health and Beaty</button>
                <button class="categoryBtn">Houshold & Cleaning Supply</button>
                <button class="categoryBtn">Personal Care Products</button>
                <button class="categoryBtn">Drinks</button>
                <button class="categoryBtn">Powered Drinks</button>
                <button class="categoryBtn">Junkfoods</button>
                <button class="categoryBtn">Cigarettes</button>
                <button class="categoryBtn">Frozen Foods</button>
                <button class="categoryBtn">Instant Noodles</button>
                <button class="categoryBtn">Alcholic Beverages</button>
                <button class="categoryBtn">Candies & Chocolates</button>
                <button class="categoryBtn">Dairy Products</button>
                <button class="categoryBtn">Condiments</button>
                <button class="categoryBtn">Cooking Ingredients & Seasoning</button>
                <button class="categoryBtn">Spreads and Fillings</button>
                <button class="categoryBtn">School Supplies</button>
            </div>

            <div class="inventoryTable">
                <table class="inventoryTable">
                    <thead>
                        <tr>
                            <th></th> <!-- Checkbox column -->
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Net Weight</th>
                            <th>Category</th>
                            <th>Unit Price</th>
                            <th>Retail Price</th>
                            <th>Stock</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox"></td> <!-- Blank space for checkbox -->
                            <td id="productID">0001</td> <!-- Product ID -->
                            <td id="productName">Argentina Meat Loaf</td> <!-- Product Name -->
                            <td id="netWeight">150g</td> <!-- Net Weight -->
                            <td id="category">Canned Goods</td> <!-- Category -->
                            <td id="unitPrice">P 21.00</td> <!-- Unit Price -->
                            <td id="retailPrice">P 27.00</td> <!-- Retail Price -->
                            <td id="stock">$150.00</td> <!-- Stock -->
                            <td><!-- Action Column --></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>