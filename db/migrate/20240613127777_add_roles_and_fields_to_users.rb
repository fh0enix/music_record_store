# frozen_string_literal: true
class AddRolesAndFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :role, :string, default: "user"
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
  end
end
