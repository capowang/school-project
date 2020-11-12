class AddColumnsToAbouts < ActiveRecord::Migration[6.0]
  def change
  	add_column :abouts, :title_cn, :string
  	add_column :abouts, :description_cn, :string
  end
end
