class AddIndiciesToTable < ActiveRecord::Migration
  def change
    add_index :sites, :country
    add_index :sites, :site_id
    add_index :sites, :state
    add_index :sites, :platform
    add_index :sites, :data

    # add_index :sites, [:country, :platform, :amount]
    # add_index :sites, [:country, :site_id, :amount]
    # add_index :sites, [:country, :state, :amount]
    # add_index :sites, [:country, :data, :amount]

    # add_index :sites, [:date, :platform, :amount]
    # add_index :sites, [:date, :state, :amount]
    # add_index :sites, [:date, :site_id, :amount]
    # add_index :sites, [:date, :country]

  end
end
