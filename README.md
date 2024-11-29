
# The Market Cat 🐾

## Table of Contents
1. [Project Description](#project-description)
2. [Features](#features)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Technologies](#technologies)
6. [Database Schema](#database-schema)
7. [Environment Variables](#environment-variables)
8. [Contributing](#contributing)
9. [License](#license)
10. [Contact](#contact)

---

## Project Description

The Market Cat is an e-commerce platform designed to enhance the shopping experience. The project features a responsive interface for users to browse and purchase items, while allowing administrators to manage products, orders, and users effectively.

---

## Features

- **User Authentication**: Registration, login, and password recovery using Devise.
- **Product Management**: Users can browse items, add them to the cart, and purchase them.
- **Order System**: Complete checkout process with email notifications.
- **Responsive Design**: Optimized for both desktop and mobile.
- **Admin Panel**: Manage products, users, and orders efficiently.
- **Integration with Mailjet**: Automated email communication.

---

## Installation

### Prerequisites

- **Ruby**: 3.2.2 or higher
- **Rails**: 8.0.0
- **PostgreSQL**
- **Node.js**: Version 14 or higher
- **Bundler**: Installed globally

### Clone the Repository

```bash
git clone https://github.com/your-username/the_market_cat.git
cd the_market_cat
```

### Install Dependencies

```bash
bundle install
yarn install
```

### Set Up the Database

```bash
rails db:create
rails db:migrate
rails db:seed
```

---

## Usage

### Start the Server

Run the following command:

```bash
rails server
```

Open your browser and navigate to:

```text
http://localhost:3000
```

---

## Technologies

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Ruby on Rails
- **Database**: PostgreSQL
- **Authentication**: Devise
- **Mailing**: Mailjet API
- **Deployment**: [Fly.io](https://fly.io/)

---

## Database Schema

### Users Table

| Column Name      | Data Type    | Description               |
|------------------|-------------|---------------------------|
| id               | Integer      | Primary key               |
| email            | String       | User email (unique)       |
| encrypted_password | String     | Password hash             |
| created_at       | Timestamp    | Record creation date      |
| updated_at       | Timestamp    | Last update date          |

### Products Table

| Column Name      | Data Type    | Description               |
|------------------|-------------|---------------------------|
| id               | Integer      | Primary key               |
| name             | String       | Product name              |
| description      | Text         | Product details           |
| price            | Decimal      | Product price             |
| stock            | Integer      | Stock available           |

### Orders Table

| Column Name      | Data Type    | Description               |
|------------------|-------------|---------------------------|
| id               | Integer      | Primary key               |
| user_id          | Integer      | Foreign key (User)        |
| total_price      | Decimal      | Total order price         |
| status           | String       | Order status (e.g., pending, completed) |

---

## Environment Variables

Create a `.env` file in the root directory with the following keys:

```env
MAILJET_API_KEY=your_mailjet_api_key
MAILJET_SECRET_KEY=your_mailjet_secret_key
```

---

## Contributing

We welcome contributions to The Market Cat! To contribute:

1. Fork the repository.
2. Create a new branch for your feature or fix:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add a brief description of your changes"
   ```
4. Push to your branch:
   ```bash
   git push origin feature-name
   ```
5. Submit a pull request.

---

##  the team : 

- ** Developer**:   Florian Tribout
                    ALexe Marichal
                    Paul Moulin
                    James Barthée
                    Caroline Olivier
- **GitHub Repository**: [The Market Cat](https://github.com/Alexe-M/the_market_cat)


---

- ## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
