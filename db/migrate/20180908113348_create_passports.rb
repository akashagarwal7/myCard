class CreatePassports < ActiveRecord::Migration[5.1]
  def change
    create_table :passports do |t|
      t.string :number
      t.references :user, index: {:unique=>true}, foreign_key: true

      t.timestamps
    end
  end
end
