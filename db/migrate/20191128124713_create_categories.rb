class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.color :title
      t.user :belongs_to

      t.timestamps
    end
  end
end
