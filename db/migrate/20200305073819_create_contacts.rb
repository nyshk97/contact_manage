class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email
      t.string :phone
      t.string :string
      t.string :content, limit: 2000

      t.timestamps
    end
  end
end
