class AddCommentToContact < ActiveRecord::Migration[6.0]
  def up
    change_column :contacts, :status, :integer, after: :content, default: 0, comment: '0: 未対応。 1: 対応中。 2: 対応済。'
  end
  def down
    change_column :contacts, :status, :integer, after: :content, default: 0
  end
end
