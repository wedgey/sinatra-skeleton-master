class Message < ActiveRecord::Base
  validates :author, presence: true
  validates :content, presence: true

  validate :valid_url

private

  def valid_url
    unless url =~ /\bhttps?:\/\/?www\..+\.\w+\b/
      errors.add(:url, "should have a valid url")
    end
  end
end