# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  belongs_to :Director
  has_many :characters
  

  has_many :cast, :through=> :characters, :source=> :actor

  has_many :bookmarks 

  has_many :bookmarkers, :through => :bookmarks, :source => :user

  validates(:title, { :presence => true })

end
