class AddBiografiaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :biografia, :string
  end
end
