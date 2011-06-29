# coding: utf-8

class Article < ActiveRecord::Base
  validates :title, :presence => true
  validates :body, :presence => true

  def multiline_body
    self.body.gsub(/\r\n|\n/, '<br />')
  end
end
