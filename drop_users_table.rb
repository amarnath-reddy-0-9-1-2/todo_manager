require "./connect_db.rb"
connect_db!

ActiveRecord::Migration.drop_table(:users) do |u|
  u.column :user_name, :string
  u.column :user_email, :string
  u.column :user_password, :string
end
