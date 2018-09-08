class CreateMykis < ActiveRecord::Migration[5.1]
  def change
    create_table :mykis do |t|
      t.string :number
      t.references :user, index: {:unique=>true}, foreign_key: true

      t.timestamps
    end
    add_index :mykis, :number, unique: true
  end
end
