require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
  
end
