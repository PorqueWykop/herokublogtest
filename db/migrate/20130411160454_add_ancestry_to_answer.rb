class AddAncestryToAnswer < ActiveRecord::Migration
  def self.up
    add_column :answers, :ancestry, :string
    add_index :answers, :ancestry
  end

  def self.down
    remove_index :answers, :ancestry
    remove_column :answers, :ancestry
  end
end