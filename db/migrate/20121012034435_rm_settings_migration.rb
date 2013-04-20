class RmSettingsMigration < ActiveRecord::Migration
  def change
    create_table :settings, :force => true do |t|
      t.column "name", :string, :limit => 30, :default => "", :null => false
      t.column "value", :text
      t.timestamps
    end
  end
end