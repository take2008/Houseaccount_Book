class CreateHousebooks < ActiveRecord::Migration[5.1]
  def change
    create_table :housebooks do |t|
      t.string :Date
      t.string :Use
      t.int :Payment

      t.timestamps
    end
  end
end
