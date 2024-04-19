class AddPrototypeToCatchCopies < ActiveRecord::Migration[7.0]
  def change
    add_reference :catch_copies, :prototype, null: false, foreign_key: true
  end
end
