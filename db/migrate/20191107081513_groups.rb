class Groups < ActiveRecord::Migration[5.0]
  def change
    create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.index ["name"], name: "index_groups_on_name", unique: true, using: :btree
    end
  end
end
