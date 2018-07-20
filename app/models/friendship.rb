class Friendship < ApplicationRecord
  
  #Self-joins: 
  belongs_to :user
  belongs_to :friend,:class_name => 'User'
end
