class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Custom scopes (db searches)
  ## Method 1 - method with a where clause
  ## call in controller using `Portfolio.angular`
  def self.angular
    where(subtitle: 'Angular')
  end

  ## Method 2 - `scope` which returns a lambda of the method instead
  ## call in controller using `Portfolio.ruby_on_rails_portfolio_items`
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
  end
end
