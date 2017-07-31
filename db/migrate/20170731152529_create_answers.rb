class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :body
      t.references :query, foreign_key: true

      t.timestamps
    end
  end
end
