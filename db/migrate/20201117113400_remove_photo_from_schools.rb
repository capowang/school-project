class RemovePhotoFromSchools < ActiveRecord::Migration[6.0]
  def change
    remove_column :schools, :photo, :string
  end
end
