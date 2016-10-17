class AddLinkToContentImages < ActiveRecord::Migration
  def change
  	add_column :spree_assets, :link, :string, default: nil
  end
end
