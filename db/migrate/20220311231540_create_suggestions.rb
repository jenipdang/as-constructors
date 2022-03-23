class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
      t.string :title
      t.text :description
      t.string :category
      t.belongs_to :user
      t.timestamps
    end

  end
end
