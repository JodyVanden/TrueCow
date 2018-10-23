class AddConsomptionToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :urban_fuel, :integer
    add_column :cars, :highway_fuel, :integer
  end
end
