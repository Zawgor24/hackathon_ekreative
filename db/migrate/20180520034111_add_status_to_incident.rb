class AddStatusToIncident < ActiveRecord::Migration[5.1]
  def change
    add_column :incidents, :status, :integer
  end
end
