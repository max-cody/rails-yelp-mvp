# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
