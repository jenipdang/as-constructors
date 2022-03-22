class User < ActiveRecord::Base
    has_many :suggestions, dependent: :destroy

    # password security 
    has_secure_password

    validates :name, :city, :state, presence: true
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
    validates :username, presence: true, length: {in: 6..25}
    validates :password, length: {in: 8..25}

    enum role: %i(client admin superadmin)
    
end