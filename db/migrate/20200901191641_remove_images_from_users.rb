class RemoveImagesFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :images, :json
  end
end
