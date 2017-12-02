class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :name, :default => "", :null => false
      t.datetime :report_date
      t.integer :user_id, :default => 0, :null => false
      t.integer :type_report, :default => 0, :null => false
      t.integer :status, :default => 0, :null => false
      t.string :link_file, :default => nil

      t.timestamps
    end
    add_index :reports, :user_id
  end
end
