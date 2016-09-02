# This migration comes from bbs (originally 20160902071411)
class CreateBbsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :bbs_users do |t|

      t.timestamps
    end
  end
end
