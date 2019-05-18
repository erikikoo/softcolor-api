class CreateBannerPrincipals < ActiveRecord::Migration[5.2]
  def change
    create_table :banner_principals do |t|
      t.string :image_url_cloudinary
      t.timestamps
    end
  end
end
