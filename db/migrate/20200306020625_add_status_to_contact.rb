class AddStatusToContact < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :status, :integer, after: :content, default: 0
  end
end
