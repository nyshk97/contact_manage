class AddUserToContact < ActiveRecord::Migration[6.0]
  def change
    add_reference :contacts, :user
  end
end
