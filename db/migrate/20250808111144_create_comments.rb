class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.timestamps
      t.references :user, null: false, foreign_key: true
    end
  end
end
