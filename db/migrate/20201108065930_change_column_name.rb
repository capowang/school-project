class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
  	rename_column :schools, :subtitle, :address
  end
end
