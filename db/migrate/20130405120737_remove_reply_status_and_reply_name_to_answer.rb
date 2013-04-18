class RemoveReplyStatusAndReplyNameToAnswer < ActiveRecord::Migration
  def up
    remove_column :answers, :reply_status
    remove_column :answers, :reply_name
  end

  def down
    add_column :answers, :reply_name, :string
    add_column :answers, :reply_status, :text
  end
end
