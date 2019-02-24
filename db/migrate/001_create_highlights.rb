class CreateHighlights < ActiveRecord::Migration[5.2]
  def change
    create_table :highlights do |t|
      t.string :content
      t.date :date
      t.integer :issue_id
      t.integer :author_id
    end
  end
end
