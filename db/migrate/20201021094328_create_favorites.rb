class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      # いいねしたuser
      t.integer :post_image_id
      # いいねされた画像
      t.timestamps
    end
  end
end
