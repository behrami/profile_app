class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.integer :resume_id
      t.string :name
      t.text :summary

      t.timestamps
    end
  end
end
