class AddUserToPrototypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :prototypes, :user, foreign_key: true
    add_column :prototypes, :content, :text
  end
end