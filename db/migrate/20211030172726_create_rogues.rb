class CreateRogues < ActiveRecord::Migration[6.1]
  def change
    create_table :rogues do |t|
      t.string :name
      t.string :weapon
      t.integer :health

      t.timestamps
    end
  end
end
