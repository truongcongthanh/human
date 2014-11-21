class CreateNhomkhoaphongs < ActiveRecord::Migration
  def change
    create_table :nhomkhoaphongs do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot

      t.timestamps
    end
  end
end
