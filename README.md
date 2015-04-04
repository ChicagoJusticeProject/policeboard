# Police Board

A responsive web app for the archive of the most serious allegations of misconduct brought against the Chicago Police Department and its employees as handled by the Chicago Police Board.

## To run locally

Dependencies
* Ruby 2.2.0
* Bundler
* Rails 4
* PostgreSQL
* Heroku
* Foreman (install with `gem install foreman`)

### Config
Create a file named .env in the root, with the contents below.
```
RACK_ENV=development
PORT=3000
```

With Postgres running, execute:
```
bundle install
rake db:create db:migrate
foreman start
```

## To be able to deploy to heroku
You must be an authorized collaborator on the Heroku app to be able to deploy. Once you are, go to the root directory of your local app and run:
```
git remote add staging git@heroku.com:policeboardstaging.git
git remote add production git@heroku.com:policeboard.git
```
To deploy to staging, run `git push staging master`.
To deploy to production, run `git push production master`.
