class AddColumnsToTeachers < ActiveRecord::Migration[6.0]
  def change
  	add_column :teachers, :name_cn, :string
  	add_column :teachers, :description_cn, :string
  end
end
