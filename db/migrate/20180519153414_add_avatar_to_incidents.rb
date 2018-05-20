class AddAvatarToIncidents < ActiveRecord::Migration[5.1]
  def change
    add_column :incidents, :avatar, :string
  end
end
