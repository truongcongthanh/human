class CreateKhoaphongs < ActiveRecord::Migration
  def change
    create_table :khoaphongs do |t|
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot
      t.references :nhomkhoaphong, index: true

      t.timestamps
    end
  end
end
