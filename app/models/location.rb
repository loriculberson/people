class Location < ActiveRecord::Base
  has_many :location_interests
  has_many :people, :through => :location_interests

  validates_uniqueness_of :name

  def self.names
    order(:name).pluck(:name)
  end

  def self.active
    all
  end
end
