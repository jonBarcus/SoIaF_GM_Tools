## Song of Ice and Fire RPG GM Tools

* Ruby 2.2.1p85
* Rails 4.2.0
* Database - PostgreSQL 9.4.1
* Using [Bycrpt](https://github.com/codahale/bcrypt-ruby) for authentication now.
  We will consider [devise](https://github.com/plataformatec/devise) in the near future after we have
  basic application functionality.


In order to use Rspec(without tests failing when they shouldn't), you'll need to run rake db:seed RAILS_ENV=test


