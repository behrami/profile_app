class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.string :title
      t.text :summary
      t.string :phone
      t.string :email
      t.string :address
      t.string :linkedin
      t.string :github
      t.string :password_digest

      t.timestamps
    end
  end
end
