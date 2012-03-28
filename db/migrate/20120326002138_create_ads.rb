class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.string :site_name
      t.string :site_url
      t.datetime :date_posted
      t.datetime :last_updated
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
