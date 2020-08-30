class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :mobile_no
      t.string :gender
      t.string :city

      t.timestamps
    end
  end
end
