class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true, length: { maximum:300 }
    scope :custom_msg_display, -> { order(:created_at).last(15) }
end
