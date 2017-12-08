class CreateLiftClasses < ActiveRecord::Migration
  def change
    create_table :lift_classes do |t|
      t.string :group
      t.text :description
      t.references :lclass, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
