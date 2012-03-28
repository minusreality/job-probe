class CreateRecruiters < ActiveRecord::Migration
  def self.up
    create_table :recruiters do |t|
      t.string :name
      t.date :resume_submission_date
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :recruiters
  end
end
