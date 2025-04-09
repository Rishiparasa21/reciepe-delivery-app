# Recipe Delivery App

This is a web application for delivering recipes, built with HTML, CSS, JavaScript, and a PostgreSQL database.

## Features

* **Dynamic Recipe Display:** Shows recipes fetched from the database.
* **Interactive Order Management:** Users can add and remove items from their cart.
* **Checkout Process:** Allows users to place orders with their details.
* **PostgreSQL Database:** Stores recipe and order data.

## Technologies Used

* HTML
* CSS
* JavaScript
* PostgreSQL
* Python (if you have python backend)

## Setup

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/Rishiparasa21/recipe-delivery-app.git
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd recipe-delivery-app
    ```
3.  **Set up the database:**
    * Install PostgreSQL.
    * Create a database named `recipe_delivery`.
    * Run the following SQL script using pgAdmin or the `psql` command-line tool:

        ```bash
        psql -U postgres -d recipe_delivery -f database/create_tables.sql
        ```

        (Replace `your_username` with your PostgreSQL username.)
4.  **Run the backend (if applicable):**
    * Install any required Python dependencies (if you have python backend).
    * Run the backend server.
5.  **Open the frontend:**
    * Open `frontend/index.html` in your web browser.

## Notes

* Make sure to configure the database credentials in the backend code (if applicable).
* If you have a backend, make sure it is running before opening the frontend.

## Contributing

Feel free to contribute to this project!

