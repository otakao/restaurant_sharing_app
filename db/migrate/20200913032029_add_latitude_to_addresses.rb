class AddLatitudeToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :latitude, :float
    add_column :addresses, :logitude, :float
  end
end
