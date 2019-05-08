
# frozen_string_literal: true

class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
