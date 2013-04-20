class CreateCustomValues < ActiveRecord::Migration
  def change
    create_table :custom_values do |t|
      t.string  "customized_type", :limit => 30, :default => "", :null => false
      t.integer "customized_id",                 :default => 0,  :null => false
      t.integer "custom_field_id",               :default => 0,  :null => false
      t.text    "value"

      t.timestamps
    end
  end
end
