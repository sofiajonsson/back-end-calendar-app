# class Auth < ApplicationRecord
# 	belongs_to :user
# 	has_one :password
#
# 	def create
# 		user = User.find_by(name: params[:name])
# 					authenticated = user.try(:authenticate, params[:password])
# 					return head (:forbidden) unless authenticated
# 					auth[:user_id]= user.id
# 	end
# end
