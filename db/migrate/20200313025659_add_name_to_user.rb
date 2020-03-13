class AddNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, before: :email
    add_column :users, :company_id, :string, after: :email
  end
end
