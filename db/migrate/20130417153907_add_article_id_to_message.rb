class AddArticleIdToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :article_id, :integer
  end
  add_index :article_id
end
