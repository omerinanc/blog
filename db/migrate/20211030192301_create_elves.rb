class CreateElves < ActiveRecord::Migration[6.1]
  def change
    create_table :elves do |t|
      t.string :name
      t.integer :level
      t.integer :damage

      t.timestamps
    end
  end
end
