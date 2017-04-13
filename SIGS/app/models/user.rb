class User < ApplicationRecord
<<<<<<< cb30e10e2013031ed0d867ab771ab314b22f2274
  has_one :coordinator, dependent: :destroy
  has_one :administrative_assistant, dependent: :destroy
  has_one :department_assistant, dependent: :destroy
  has_secure_password
end
