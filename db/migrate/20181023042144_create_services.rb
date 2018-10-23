class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :kilometer
      t.integer :price
      t.string :city
      t.references :cars, foreign_key: true
    end
  end
end
