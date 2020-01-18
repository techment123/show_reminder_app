class AddFavotiteInChannels < ActiveRecord::Migration
  def change
    add_column :channels, :favorite, :boolean, default: false
  end
end
