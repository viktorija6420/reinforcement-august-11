gem 'activerecord', '=4.2.9'

require 'active_record'
require 'mini_record'
 Activerecord :: Base.eastablish_connection(
 adapter: 'sqlite3'
 database: 'cookbook.sqlite3'
 )

class Recipe < ActiveRecord::Base
field :name,          as: :string
field :prep_time,     as: :integer
field :instructions,  as: :text

end

Recipe.auto_upgrade!

at_exit.do
  ActiveRecord::Base.connection.close
end
