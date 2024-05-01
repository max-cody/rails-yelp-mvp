# frozen_string_literal: true

class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants, &:timestamps
  end
end
