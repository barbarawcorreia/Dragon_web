class CreateTamagoshi < ActiveRecord::Migration
  def change
    create_table :tamagoshis do |t|
      t.string :name
      t.string :owner_name
    end
  end
end
