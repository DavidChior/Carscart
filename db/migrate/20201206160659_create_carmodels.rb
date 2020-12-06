class CreateCarmodels < ActiveRecord::Migration[6.0]
  def change
    create_table :carmodels do |t|
      t.string :type1
      t.string :fuel1
      t.integer :range1
      t.integer :speed1
      t.decimal :pollution1

      t.timestamps
    end
  end
end
