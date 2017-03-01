class AddUserIdToDocs < ActiveRecord::Migration[5.0]
  def change
    add_column :docs, :user_id, :integer
    # add_foreign_key :doc, :user
  end
end
