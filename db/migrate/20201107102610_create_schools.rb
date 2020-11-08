class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :photo

      t.timestamps
    end
  end
end
