class AddConactToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :contact, foreign_key: true, after: :id
  end
end
