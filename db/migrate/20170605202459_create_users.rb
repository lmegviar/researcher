class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :crypted_password
      t.string :name

      t.timestamps
    end
  end
end
