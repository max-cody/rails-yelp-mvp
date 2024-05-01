# frozen_string_literal: true

class AddPhoneNumberToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :phone_number, :string
  end
end
