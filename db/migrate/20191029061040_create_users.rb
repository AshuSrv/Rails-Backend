class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.text :accessToken
      t.string :provider
      t.string :email
      t.text :pic_url
      t.string :uid
      t.text :secret
      t.timestamps
    end
  end
end
