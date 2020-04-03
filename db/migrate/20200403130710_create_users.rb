class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :User_name
      t.text :user_email
      t.text :user_password
    end
  end
end
