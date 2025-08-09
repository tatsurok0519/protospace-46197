class AddPrototypeIdToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :prototype_id, :integer
  end
end
