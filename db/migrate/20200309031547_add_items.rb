class AddItems < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :company, :string, before: :name
    add_column :contacts, :kana, :string, after: :name
  end
end
