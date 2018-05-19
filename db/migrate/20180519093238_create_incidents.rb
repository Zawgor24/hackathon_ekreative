class CreateIncidents < ActiveRecord::Migration[5.1]
  def change
    create_table :incidents do |t|
      t.string :name
      t.string :height
      t.string :age
      t.string :info
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
