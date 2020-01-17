class Teacher < User
  has_many :questions
  has_many :tests
end