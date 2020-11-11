class CreateAbouts < ActiveRecord::Migration[6.0]
  def change
    create_table :abouts do |t|
      t.string :title
      t.text :description
      t.text :photo, array: true, default: []
      t.timestamps
    end
  end
end
