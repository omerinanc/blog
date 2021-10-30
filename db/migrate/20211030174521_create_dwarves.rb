class CreateDwarves < ActiveRecord::Migration[6.1]
  def change
    create_table :dwarves do |t|
      t.string :name
      t.integer :height
      t.integer :armor_class

      t.timestamps
    end
  end
end
