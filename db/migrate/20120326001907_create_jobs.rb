class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :company_name
      t.date :application_date
      t.text :compensation
      t.integer :recruiter_id
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
