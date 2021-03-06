class User < ApplicationRecord
  # validates :email, presence: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  has_secure_password


  belongs_to :city, optional: true
  # 1-N association with gossips table
  has_many :gossips

  # 1-N association with sent_messages (private_messages) table
  # users renamed as senders for this association, class_name explains it to Rails
  has_many :sent_messages, foreign_key: :sender_id, class_name: 'PrivateMessage'

  # 1-N association with message_deliverings table
  has_many :message_deliverings, foreign_key: :recipient_id

  # N-N association with received_messages (private_messages) table via the message_deliverings table
  # renamed as recipients but doesn't show here
  has_many :received_messages, through: :message_deliverings

  # 1-N associations with comments
  has_many :comments

  # 1-N associations with likes
  has_many :likes

  # bcrypt is handling password
  #has_secure_password
end

