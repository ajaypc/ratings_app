class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :answerId
      t.text :commentText
      t.integer :rating

      t.timestamps
    end
  end
end
