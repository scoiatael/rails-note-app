class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body
      t.boolean :done
      t.date :deadline

      t.timestamps
    end
  end
end
