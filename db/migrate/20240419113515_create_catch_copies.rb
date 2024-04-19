class CreateCatchCopies < ActiveRecord::Migration[7.0]
  def change
    create_table :catch_copies do |t|

      t.timestamps
    end
  end
end
