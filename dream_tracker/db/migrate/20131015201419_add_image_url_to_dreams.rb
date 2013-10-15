class AddImageUrlToDreams < ActiveRecord::Migration
  def change
    add_column :dreams, :image_url, :string
  end
end
