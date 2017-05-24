class Url < ApplicationRecord
  validate :correct_url
  before_create :convert_url

  def convert_url
    abcdario = ("A".."Z").to_a + ("a".."z").to_a + (0..9).to_a
    short = abcdario.sample(6).join
    self.short_url = short
  end

  def correct_url
    if !self.long_url.start_with?("https://")
      errors.add(:long_url, "no comienza con https://")
    end
  end
end
