class AddPasswordToFoodies < ActiveRecord::Migration[5.2]
  def change
    add_column :foodies, :password_digest, :string
  end
end
