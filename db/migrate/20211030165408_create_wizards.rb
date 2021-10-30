class CreateWizards < ActiveRecord::Migration[6.1]
  def change
    create_table :wizards do |t|
      t.string :name
      t.string :spell_name

      t.timestamps
    end
  end
end
