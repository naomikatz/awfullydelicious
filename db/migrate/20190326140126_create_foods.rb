class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :like_count
      t.string :spot_name
      t.string :address
      t.belongs_to :location
      t.belongs_to :category

      t.timestamps
    end
  end
end
