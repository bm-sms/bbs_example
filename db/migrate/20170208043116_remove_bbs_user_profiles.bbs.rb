# This migration comes from bbs (originally 20170201092549)
class RemoveBbsUserProfiles < ActiveRecord::Migration[5.0]
  def change
    drop_table :bbs_user_profiles
  end
end
