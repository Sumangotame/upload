class UserDetail < ApplicationRecord
    mount_uploader :photo, PhotoUploader # Tells rails to use this uploader for this model.   
    validates :Name, presence: true # Make sure the owner's name is present.   

end
