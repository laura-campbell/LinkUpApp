class CreateLinkUps < ActiveRecord::Migration[5.1]
  def change
    create_table :link_ups do |t|
      t.string   :name
      t.integer  :location_id
      t.text     :description
      t.datetime :datetime
      t.timestamps
    end
  end
end
