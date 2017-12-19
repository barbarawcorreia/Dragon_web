# frozen_string_literal: true

class CreateDragonBases < ActiveRecord::Migration
  def change
    create_table :dragon_bases do |t|
      t.string :name
      t.string :owner_name

      t.timestamps null: false
    end
  end
end
