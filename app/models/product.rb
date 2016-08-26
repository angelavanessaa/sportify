class Product < ActiveRecord::Base
  belongs_to :category
  mount_uploaders :avatars, AvatarUploader
end
