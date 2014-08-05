class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answerText
      t.integer :rating
      t.integer :questionId

      t.timestamps
    end
  end
end
