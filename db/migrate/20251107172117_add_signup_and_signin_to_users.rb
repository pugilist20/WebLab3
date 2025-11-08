class AddSignupAndSigninToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :signed_up_at, :datetime
    add_column :users, :last_sign_in_at, :datetime

    reversible do |dir|
      dir.up do
        User.update_all("signed_up_at = created_at")
      end
    end

    # Добавляем индексы (не обязательно, но полезно)
    add_index :users, :last_sign_in_at
    
  end
end
