class User < ActiveRecord::Base
	validates :name, presence: {message: 'There must be a name'}
	validates :name, length:{maximum: 50}
	validates :email, format:{with: /\w+.+@{1}+\w+.{1}[a-zA-Z0-9]+/, message:'Email format needs to have @ and .'}
end
