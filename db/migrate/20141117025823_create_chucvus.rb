class CreateChucvus < ActiveRecord::Migration
  def change
    create_table :chucvus do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot
      t.references :nhomchucvu, index: true

      t.timestamps
    end
  end
end
