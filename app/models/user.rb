

class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	# 以下にdeviseで有効にする機能を記述する。
	devise :database_authenticatable, :registerable,
	 :recoverable, :rememberable, :trackable, :validatable, :omniauthable

	# Setup accessible (or protected) attributes for your model
	# アプリケーション内でアクセシブルにする場合は以下に記述
	attr_accessible :email, :password, :password_confirmation, :remember_me
	attr_accessible :id, :last_login, :mail, :name, :type , :uid, :provider

	def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
		
		#providerとuidプロパティでDBから検索
		user = User.where( :provider => auth.provider, :uid => auth.uid).first

		#もし見つからなければ新規作成	
		unless user
			user = User.create(	:name => auth.extra.raw_info.name,
				                :provider => auth.provider,
				                :uid => auth.uid,
				                :email => auth.info.email,
				                :password => Devise.friendly_token[0,20]
	            			)
		end

	end


	def self.new_with_session(params, session)

		super.tap do |user|
			if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
			user.email = data["email"] if user.email.blank?
			end
		end

	end 


end
