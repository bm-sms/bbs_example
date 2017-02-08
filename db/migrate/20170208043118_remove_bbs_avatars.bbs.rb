# This migration comes from bbs (originally 20170201093926)
class RemoveBbsAvatars < ActiveRecord::Migration[5.0]
  def change
    drop_table :bbs_avatars
  end
end
