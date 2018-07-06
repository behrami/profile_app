class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.integer :resume_id
      t.string :name
      t.string :school_name

      t.timestamps
    end
  end
end
