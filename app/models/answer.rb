class Answer < ActiveRecord::Base
  belongs_to :User
  belongs_to :Question
end
