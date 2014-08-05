class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :questionText
      t.integer :rating

      t.timestamps
    end
  end
end
