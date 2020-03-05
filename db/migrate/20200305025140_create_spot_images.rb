class CreateSpotImages < ActiveRecord::Migration[6.0]
  def change
    create_table :spot_images do |t|

      t.text :src
      t.references :spot, foreign_key: true
      t.timestamps
    end
  end
end
