class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.text :gallery
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
