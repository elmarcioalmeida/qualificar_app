# frozen_string_literal: true

class AddDeviseToUsuarios < ActiveRecord::Migration[7.1]
  def self.up
    change_table :usuarios do |t|
      ## Database authenticatable
      t.string :encrypted_password, null: false, default: "" unless column_exists?(:usuarios, :encrypted_password)

      ## Recoverable
      t.string   :reset_password_token unless column_exists?(:usuarios, :reset_password_token)
      t.datetime :reset_password_sent_at unless column_exists?(:usuarios, :reset_password_sent_at)

      ## Rememberable
      t.datetime :remember_created_at unless column_exists?(:usuarios, :remember_created_at)

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false unless column_exists?(:usuarios, :sign_in_count)
      # t.datetime :current_sign_in_at unless column_exists?(:usuarios, :current_sign_in_at)
      # t.datetime :last_sign_in_at unless column_exists?(:usuarios, :last_sign_in_at)
      # t.string   :current_sign_in_ip unless column_exists?(:usuarios, :current_sign_in_ip)
      # t.string   :last_sign_in_ip unless column_exists?(:usuarios, :last_sign_in_ip)

      ## Confirmable
      # t.string   :confirmation_token unless column_exists?(:usuarios, :confirmation_token)
      # t.datetime :confirmed_at unless column_exists?(:usuarios, :confirmed_at)
      # t.datetime :confirmation_sent_at unless column_exists?(:usuarios, :confirmation_sent_at)
      # t.string   :unconfirmed_email unless column_exists?(:usuarios, :unconfirmed_email)

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false unless column_exists?(:usuarios, :failed_attempts)
      # t.string   :unlock_token unless column_exists?(:usuarios, :unlock_token)
      # t.datetime :locked_at unless column_exists?(:usuarios, :locked_at)

      ## Adiciona a coluna status
      t.integer :status, default: 0, null: false unless column_exists?(:usuarios, :status)
    end

    add_index :usuarios, :reset_password_token, unique: true unless index_exists?(:usuarios, :reset_password_token)
    # add_index :usuarios, :confirmation_token, unique: true unless index_exists?(:usuarios, :confirmation_token)
    # add_index :usuarios, :unlock_token, unique: true unless index_exists?(:usuarios, :unlock_token)
  end

  def self.down
    change_table :usuarios do |t|
      t.remove :encrypted_password if column_exists?(:usuarios, :encrypted_password)
      t.remove :reset_password_token if column_exists?(:usuarios, :reset_password_token)
      t.remove :reset_password_sent_at if column_exists?(:usuarios, :reset_password_sent_at)
      t.remove :remember_created_at if column_exists?(:usuarios, :remember_created_at)
      # t.remove :sign_in_count if column_exists?(:usuarios, :sign_in_count)
      # t.remove :current_sign_in_at if column_exists?(:usuarios, :current_sign_in_at)
      # t.remove :last_sign_in_at if column_exists?(:usuarios, :last_sign_in_at)
      # t.remove :current_sign_in_ip if column_exists?(:usuarios, :current_sign_in_ip)
      # t.remove :last_sign_in_ip if column_exists?(:usuarios, :last_sign_in_ip)
      # t.remove :confirmation_token if column_exists?(:usuarios, :confirmation_token)
      # t.remove :confirmed_at if column_exists?(:usuarios, :confirmed_at)
      # t.remove :confirmation_sent_at if column_exists?(:usuarios, :confirmation_sent_at)
      # t.remove :unconfirmed_email if column_exists?(:usuarios, :unconfirmed_email)
      # t.remove :failed_attempts if column_exists?(:usuarios, :failed_attempts)
      # t.remove :unlock_token if column_exists?(:usuarios, :unlock_token)
      # t.remove :locked_at if column_exists?(:usuarios, :locked_at)
      t.remove :status if column_exists?(:usuarios, :status)
    end
  end
end
