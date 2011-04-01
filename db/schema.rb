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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110324154425) do

  create_table "customers", :force => true do |t|
    t.integer  "year",            :limit => 10
    t.string   "full_name"
    t.date     "birth_date"
    t.string   "address"
    t.string   "number"
    t.string   "postal_code",     :limit => 5
    t.string   "city"
    t.string   "prov"
    t.string   "tax_code",        :limit => 16
    t.string   "contract_number"
    t.integer  "square_meters",   :limit => 10
    t.integer  "category",        :limit => 10
    t.string   "taxable_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "import_cells", :force => true do |t|
    t.integer  "import_table_id", :limit => 10
    t.integer  "row_index",       :limit => 10
    t.integer  "column_index",    :limit => 10
    t.string   "contents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "import_cells", ["import_table_id"], :name => "index_import_cells_on_import_table_id"

  create_table "import_tables", :force => true do |t|
    t.string   "original_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "",     :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "",     :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",        :limit => 10,  :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                                :default => "user", :null => false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
