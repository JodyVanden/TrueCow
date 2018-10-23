class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :manufacturer
      t.string :name
      t.integer :year
      t.integer :kilometer
    end
  end
end
