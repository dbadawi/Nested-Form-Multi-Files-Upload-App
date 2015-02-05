class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :lesson, index: true
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
