class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :User, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
