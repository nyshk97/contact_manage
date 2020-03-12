class AddUserToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :user, foreign_key: true, after: :id
  end
end
