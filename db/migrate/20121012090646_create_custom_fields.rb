class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string  "type",            :limit => 30, :default => "",    :null => false
      t.string  "name",            :limit => 30, :default => "",    :null => false
      t.string  "field_format",    :limit => 30, :default => "",    :null => false
      t.text    "possible_values"
      t.string  "regexp",                        :default => ""
      t.integer "min_length",                    :default => 0,     :null => false
      t.integer "max_length",                    :default => 0,     :null => false
      t.boolean "is_required",                   :default => false, :null => false
      t.boolean "is_for_all",                    :default => false, :null => false
      t.boolean "is_filter",                     :default => false, :null => false
      t.integer "position",                      :default => 1
      t.boolean "searchable",                    :default => false
      t.text    "default_value"
      t.boolean "editable",                      :default => true
      t.boolean "visible",                       :default => true,  :null => false
      t.boolean "multiple",                      :default => false

      t.timestamps
    end
  end
end
