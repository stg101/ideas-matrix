# Rails heroku

- install heroku cli

- heroku login
- rails new myapp --database=postgresql

- generate a controlle for home and add to root root 'home#index'

- commitea

- rails s

- create a heroku project from web
- heroku git:remote -a project-name

## deploy

- \$ git add .
- \$ git commit -am "make it better"
- \$ git push heroku master

## add

- gem 'dotenv-rails', groups: [:development, :test]
- echo ".env" >> .gitignore
- git add .gitignore
- git commit -m "add .env to .gitignore"

## migrate database

- heroku run rake db:migrate

## github

- create github project , change remote, change to github in heroku
