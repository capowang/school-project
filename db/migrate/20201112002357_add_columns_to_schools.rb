class AddColumnsToSchools < ActiveRecord::Migration[6.0]
  def change
  	add_column :schools, :title_cn, :string
  	add_column :schools, :address_cn, :string
  	add_column :schools, :content_cn, :text
  end
end
