class CreateGraffitis < ActiveRecord::Migration[5.0]
  def change
    create_table :graffitis do |t|
      t.references :artist, index: true, foreign_key: { to_table: :users }
      t.string :borough
      t.string :status
      t.string :incident_address
      t.string :string
      t.float :latitude
      t.float :longitude
      t.boolean :hotspot
      t.datetime :streetview_capture_date
      t.jsonb :pov

      t.timestamps
    end
  end
end
