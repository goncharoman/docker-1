class RemoveValueFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :post_id, :integer
  end
end
