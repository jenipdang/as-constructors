class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
      t.string :title
      t.text :description
      t.integer :like
      t.belongs_to :user
      t.timestamps
    end

  end
end
