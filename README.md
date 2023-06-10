# Jungle

The Jungle project is an innovative e-commerce platform focused on offering a wide range of plants to customers. By leveraging technology and a seamless user interface, we aim to revolutionize the plant-buying experience, making it easy for anyone to find and purchase the right plant for their space. 

## Views

![adminview](https://github.com/jeevesj/jungle-rails/blob/master/app/assets/images/adminpanel.JPG?raw=true)

![add a new product](https://github.com/jeevesj/jungle-rails/blob/master/app/assets/images/newprod.JPG?raw=true)

![user view](https://github.com/jeevesj/jungle-rails/blob/master/app/assets/images/plants.JPG?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
