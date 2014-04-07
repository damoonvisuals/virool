class AddSiteIdToSites < ActiveRecord::Migration
  def change
    add_column :sites, :site_id, :integer

    Site.all.each do |site|
      site.update(site_id: (rand(100)+1))
    end
  end
end
