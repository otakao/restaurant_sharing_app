class RemoveLogitudeFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :logitude, :float
  end
end
