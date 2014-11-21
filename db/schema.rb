# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141117035811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "edb_dblink_libpq"
  enable_extension "edb_dblink_oci"

  create_table "btddts", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "btdpxas", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.string   "viettat"
    t.integer  "btdquan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "btdpxas", ["btdquan_id"], name: "index_btdpxas_on_btdquan_id", using: :btree

  create_table "btdquans", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.integer  "btdtt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "btdquans", ["btdtt_id"], name: "index_btdquans_on_btdtt_id", using: :btree

  create_table "btdtts", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.integer  "vungbv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "btdtts", ["vungbv_id"], name: "index_btdtts_on_vungbv_id", using: :btree

  create_table "chucdanhs", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.integer  "nhomchucdanh_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chucdanhs", ["nhomchucdanh_id"], name: "index_chucdanhs_on_nhomchucdanh_id", using: :btree

  create_table "chucvus", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.integer  "nhomchucvu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chucvus", ["nhomchucvu_id"], name: "index_chucvus_on_nhomchucvu_id", using: :btree

  create_table "dmquocgia", force: true do |t|
    t.string   "ma"
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.string   "iso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gioitinhs", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "honnhans", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "khoaphongs", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.integer  "nhomkhoaphong_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "khoaphongs", ["nhomkhoaphong_id"], name: "index_khoaphongs_on_nhomkhoaphong_id", using: :btree

  create_table "nganhangs", force: true do |t|
    t.string   "ma"
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nghenghieps", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.integer  "nhomnghenghiep_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nghenghieps", ["nhomnghenghiep_id"], name: "index_nghenghieps_on_nhomnghenghiep_id", using: :btree

  create_table "nhanviens", force: true do |t|
    t.string   "manv"
    t.string   "machamcong"
    t.string   "ho"
    t.string   "ten"
    t.integer  "gioitinh_id"
    t.datetime "ngaysinh"
    t.integer  "namsinh"
    t.string   "noisinh"
    t.string   "nguyenquan"
    t.string   "socmnd"
    t.datetime "ngaycapcmnd"
    t.string   "noicapcmnd"
    t.string   "sohochieu"
    t.datetime "ngaycaphochieu"
    t.datetime "ngayhethanhochieu"
    t.string   "noicaphochieu"
    t.integer  "honnhan_id"
    t.integer  "thanhphangiadinh_id"
    t.integer  "thanhphanbanthan_id"
    t.integer  "btddt_id"
    t.integer  "tongiao_id"
    t.integer  "dmquocgia_id"
    t.integer  "trinhdohocvan_id"
    t.integer  "trinhdodaotao_id"
    t.string   "noidaotao"
    t.string   "khoadaotao"
    t.string   "chuyennganhdaotao"
    t.integer  "namtotnghiep"
    t.string   "xeploaitotnghiep"
    t.integer  "nghenghiep_id"
    t.string   "dtdd"
    t.string   "dtcoquan"
    t.string   "emailcanhan"
    t.string   "emailcoquan"
    t.string   "dtnharieng"
    t.string   "yahoo"
    t.string   "skype"
    t.string   "diachithuongtru"
    t.integer  "thuongtru_btdtt_id"
    t.integer  "thuongtru_btdquan_id"
    t.integer  "thuongtru_btdpxa_id"
    t.string   "diachitamtru"
    t.integer  "tamtru_btdtt_id"
    t.integer  "tamtru_btdquan_id"
    t.integer  "tamtru_btdpxa_id"
    t.string   "hotennguoithan"
    t.integer  "quanhegiadinh_id"
    t.string   "emailnguoithan"
    t.string   "dtddnguoithan"
    t.string   "dtnhariengnguoithan"
    t.string   "diachinguoithan"
    t.string   "masothue"
    t.string   "taikhoannganhang"
    t.string   "nganhang_id"
    t.boolean  "dangvien"
    t.datetime "ngaydubidang"
    t.datetime "ngaychinhthucdang"
    t.integer  "dang_chucvu_id"
    t.string   "noiketnapdang"
    t.boolean  "doanvien"
    t.datetime "ngayvaodoan"
    t.integer  "doan_chucvu_id"
    t.string   "noiketnapdoan"
    t.boolean  "quannhan"
    t.datetime "ngaynhapngu"
    t.string   "donvinhapngu"
    t.datetime "ngayxuatngu"
    t.string   "chucvutrongquanngu"
    t.string   "quanham"
    t.string   "binhchung"
    t.string   "lydoxuatngu"
    t.boolean  "thuongbinh"
    t.datetime "ngaythamgiacachmang"
    t.string   "hangthuongbinh"
    t.string   "tylesuygiamlaodong"
    t.boolean  "huongchedo"
    t.string   "nhommau"
    t.string   "chieucao"
    t.string   "cannang"
    t.string   "thongtinsuckhoe"
    t.string   "canluuysuckhoe"
    t.string   "benhtat"
    t.boolean  "nguoikhuyettat"
    t.text     "muctieucanhan"
    t.text     "sothich"
    t.text     "diemmanh"
    t.text     "diemyeu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nhomchucdanhs", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nhomchucvus", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nhomkhoaphongs", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nhomnghenghieps", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quanhegiadinhs", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thanhphanbanthans", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thanhphangiadinhs", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tongiaos", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trinhdodaotaos", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trinhdohocvans", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vungbvs", force: true do |t|
    t.string   "ten_vi"
    t.string   "ten_en"
    t.string   "ten_ot"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
