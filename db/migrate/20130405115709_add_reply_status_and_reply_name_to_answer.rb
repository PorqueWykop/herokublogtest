class AddReplyStatusAndReplyNameToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :reply_status, :text
    add_column :answers, :reply_name, :string
  end
end
