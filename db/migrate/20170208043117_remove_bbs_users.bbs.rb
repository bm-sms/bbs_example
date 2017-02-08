# This migration comes from bbs (originally 20170201092550)
class RemoveBbsUsers < ActiveRecord::Migration[5.0]
  def change
    drop_table :bbs_users
  end
end
