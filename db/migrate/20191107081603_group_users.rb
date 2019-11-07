class GroupUsers < ActiveRecord::Migration[5.0]
  def change
    create_table "group_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer  "group_id"
      t.integer  "user_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.index ["group_id"], name: "index_group_users_on_group_id", using: :btree
      t.index ["user_id"], name: "index_group_users_on_user_id", using: :btree
    end
  end
end
