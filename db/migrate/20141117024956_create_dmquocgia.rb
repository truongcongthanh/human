class CreateDmquocgia < ActiveRecord::Migration
  def change
    create_table :dmquocgia do |t|
      t.string :ma
      t.string :ten_vi
      t.string :ten_en
      t.string :ten_ot
      t.string :iso

      t.timestamps
    end
  end
end
