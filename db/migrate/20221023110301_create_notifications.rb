class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.integer :favorite_id
      t.integer :comment_id
      t.integer :visitor_id
      t.integer :visited_id
      t.string :action,default: '',null: false
      t.boolean :checked,default: false, null: false

      t.timestamps
    end
  end
end
