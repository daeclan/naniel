class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :condition
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end
