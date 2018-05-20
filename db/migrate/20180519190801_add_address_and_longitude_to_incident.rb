class AddAddressAndLongitudeToIncident < ActiveRecord::Migration[5.1]
  def change
    add_column :incidents, :address, :string
  end
end
