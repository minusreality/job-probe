class UserHasEntities < ActiveRecord::Migration
  def up
    change_table :jobs do |t|
      t.integer :user_id
      t.index :user_id
    end
    
    change_table :ads do |t|
      t.integer :user_id
      t.index :user_id
    end
    
    change_table :recruiters do |t|
      t.integer :user_id
      t.index :user_id
    end
  end

  def down
    remove_column :jobs, :user_id
    remove_column :ads, :user_id
    remove_column :recruiters, :user_id
  end
end
