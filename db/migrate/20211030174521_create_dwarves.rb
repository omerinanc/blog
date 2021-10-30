class CreateDwarves < ActiveRecord::Migration[6.1]
  def change
    create_table :dwarves do |t|
      t.name :
      t.height :
      t.armor_class :

      t.timestamps
    end
  end
end
