class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.string :image
      t.text :description
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
