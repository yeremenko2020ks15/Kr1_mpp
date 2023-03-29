class Task < ApplicationRecord
  STATUSES = %w[waiting in_progress ended].freeze
  validates :name, :description, :status, presence: true
  validates :status, inclusion: { in: STATUSES }
end
