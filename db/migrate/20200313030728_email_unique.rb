class EmailUnique < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :email, :string, null: false, unique: true
  end
  def down
    change_column :users, :email, :string, null: false
  end
end
