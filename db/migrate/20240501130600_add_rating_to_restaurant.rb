class AddRatingToRestaurant < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :integer, :string
  end
end
