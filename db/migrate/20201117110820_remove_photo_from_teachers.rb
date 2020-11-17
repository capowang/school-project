class RemovePhotoFromTeachers < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :photo, :string
  end
end
