class Incident < ApplicationRecord
  STATUS = ['In Progres', 'Resolved']

  belongs_to :user

  before_create :add_default_status

  mount_uploader :avatar, AvatarUploader

  def add_default_status
    status = STATUS[0]
  end

end
