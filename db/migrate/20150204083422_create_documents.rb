class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.references :lesson, index: true

      t.timestamps
    end
  end
end
