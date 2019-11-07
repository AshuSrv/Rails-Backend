class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :token
      t.string :provider
      t.string :email
      t.text :profile_image
      t.string :uid
      t.text :secret
      t.timestamps
    end
  end
end
