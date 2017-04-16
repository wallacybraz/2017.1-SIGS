class User < ApplicationRecord
  has_one :coordinator, dependent: :destroy
  has_one :administrative_assistant, dependent: :destroy
  has_one :department_assistant, dependent: :destroy
  has_secure_password
  accepts_nested_attributes_for :department_assistant, :reject_if => :all_blank
  accepts_nested_attributes_for :coordinator, :reject_if => :all_blank
  accepts_nested_attributes_for :administrative_assistant
end
