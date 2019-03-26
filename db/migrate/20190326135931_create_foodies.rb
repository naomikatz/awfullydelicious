class CreateFoodies < ActiveRecord::Migration[5.2]
  def change
    create_table :foodies do |t|
      t.string :username

      t.timestamps
    end
  end
end
