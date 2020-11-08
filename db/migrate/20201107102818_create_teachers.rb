class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :photo
      t.string :name
      t.string :description
      t.references :school, null: false, foreign_key: true
      t.timestamps
    end
  end
end
