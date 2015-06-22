class CreateAndroidSampleAppUsers < ActiveRecord::Migration
  def change
    create_table :android_sample_app_users do |t|
      t.string :user_name
      t.integer :scores

      t.timestamps
    end
  end
end
