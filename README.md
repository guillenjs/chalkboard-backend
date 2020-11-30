
# Chalkboard

Chalkboard is an application for educators to create assignments and be able to assign students a code in order for them to have access to the classroom. The application keeps track of completed assignments and grades both for teachers and students.

## Installation	## Installation
(Disclaimer: Need to have [Homebrew](https://brew.sh/), [Ruby](https://www.ruby-lang.org/en/), [Rails](https://rubyonrails.org/), and [PostgreSQL](https://www.postgresql.org/) installed)	


1. Clone repo	1. Clone repo
2.  Bundle Install	2. ###### `$ npm install`
    ###### `$ bundle install`	     (need to have Node.js install already )
3. create database and migrate tables	3. Clone backend repo https://github.com/guillenjs/chalkboard-backend
    ###### `$ rails db:create`
    ###### `$ rails db:migrate`
4. run rails server 	 
    ###### `$ rails s`	   
5. run front end repo - [chalkboard](https://github.com/guillenjs/chalkboard)	

## Tech Stack
 - [Ruby 2.6.1](https://www.ruby-lang.org/en/news/2019/01/30/ruby-2-6-1-released/)	
 - [Ruby on Rails](https://rubyonrails.org/)	   
 - [PostgreSQL](https://www.postgresql.org/)
