class CreateNghenghieps < ActiveRecord::Migration
  def change
    create_table :nghenghieps do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot
      t.references :nhomnghenghiep, index: true

      t.timestamps
    end
  end
end
