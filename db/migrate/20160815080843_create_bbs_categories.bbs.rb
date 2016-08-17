# This migration comes from bbs (originally 20160815075807)
class CreateBbsCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :bbs_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
