class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.references :artwork, index: true
      t.references :exhibition, index: true
      t.boolean :sold, default: false
      t.float :price

      t.timestamps
    end
  end
end
