# P3-Digital-Academy-Project-ComicsShop-BackEnd

This is the back-end for the Comics Shop application built with **Spring Boot**. It handles the management of products, users, and categories, and includes basic CRUD operations. It also provides integration with MySQL and has a Docker configuration for running the MySQL database.

## Features

- **Product Management:** Create, read, update, and delete products.
- **User Management:** User registration, updating profiles, and administration capabilities.
- **Category Support:** Assign categories to products.
- **Pagination Support:** Fetch paginated product data.
- **Cross-Origin Resource Sharing (CORS):** Enabled for all routes.

## Endpoints

### Product Endpoints (`/api/v1`)

- `GET /api/v1/products`  
  Fetch a paginated list of products.

  - **Params:** `page`, `limit`

- `GET /api/v1/product`  
  Fetch a specific product by its ID.

  - **Params:** `id`

- `POST /api/v1/product`  
  Create a new product.

  - **Body:** `Product` object

- `PUT /api/v1/product`  
  Update a product by its ID.

  - **Params:** `id`
  - **Body:** `Product` object

- `DELETE /api/v1/product`  
  Delete a product by its ID.

  - **Params:** `id`

- `GET /api/v1/product/category`  
  Fetch products by category with pagination.
  - **Params:** `category`, `page`, `limit`

### User Endpoints (`/user`)

- `GET /users`  
  Fetch a list of all users.

- `GET /user/{id}`  
  Fetch a specific user by ID.

- `POST /user`  
  Create a new user.

  - **Body:** `User` object

- `PUT /user/{id}`  
  Update a user's profile or admin status.

  - **Params:** `id`
  - **Body:** `User` object

- `DELETE /user/{id}`  
  Delete a user by ID.

## Database Setup

The project includes an `SQL` file to create all necessary tables for the `MySQL` database. You can find it in the `resources` folder.

### Running MySQL with Docker

To set up MySQL using Docker, you can use the following script to create the image:

```bash
docker run --name comics-shop-mysql -e MYSQL_ROOT_PASSWORD=yourpassword -e MYSQL_DATABASE=comics_shop -p 3306:3306 -d mysql:latest
```

This script will:

- Create a MySQL container named `comics-shop-mysql`.
- Set the root password to `yourpassword`.
- Create a database named `comics_shop`.

Make sure to replace `yourpassword` with a secure password. You can customize the port and other environment variables as needed.
