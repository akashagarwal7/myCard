class CreateDataTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :data_types do |t|
      t.string :name
      t.string :prefix

      t.timestamps
    end
    add_index :data_types, :name, unique: true
    add_index :data_types, :prefix, unique: true
  end
end
