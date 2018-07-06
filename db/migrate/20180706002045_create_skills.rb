class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.integer :resume_id
      t.string :name

      t.timestamps
    end
  end
end
