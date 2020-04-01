class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image 

  def self.angular
    where(subtitle: 'Angular') 
  end

  #Warning there must be space between curly brace { and where or it won't work
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') } 
end
