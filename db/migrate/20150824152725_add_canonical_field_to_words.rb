class AddCanonicalFieldToWords < ActiveRecord::Migration
  def change
    add_column :words, :canonical, :string
    add_index :words, :canonical
  end
end
