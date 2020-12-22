class CreateLoginLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :login_logs do |t|
      t.string :email
      t.string :ip_adress
      t.string :user_agent
      t.text :token
      t.timestamp :expired
      t.integer :status

      t.timestamps
    end
  end
end
