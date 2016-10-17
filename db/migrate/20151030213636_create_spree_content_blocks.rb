class CreateSpreeContentBlocks < ActiveRecord::Migration
  def change
    create_table :spree_content_blocks do |t|
    	t.text :content
    	t.string :keyy, null: false
      t.timestamps null: false
    end
  end
end
