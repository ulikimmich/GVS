class User < ActiveRecord::Base

  has_many :microposts
  has_one :discipline
  has_one :acc_application

  has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "50x50>" },
                    :default_url => ":style/default.png"

  #validates_attachment :content_type => { :content_type => ['image/jpeg', 'image/png'] },
  #                     :size => { :in => 0..1.megabytes }

  geocoded_by :create_address

  after_validation :geocode, :if => :city_changed?
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
            format:     { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def create_address
    "#{city}, #{state}"
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
