class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :platform
      t.string :country
      t.string :state
      t.decimal :amount
      t.datetime :data

      t.timestamps
    end
  end
end
