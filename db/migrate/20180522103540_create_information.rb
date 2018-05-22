class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :email
      t.text :description
      t.boolean :interested

      t.timestamps
    end
  end
end
