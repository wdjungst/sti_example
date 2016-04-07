class Animal < ActiveRecord::Base
  belongs_to :zoo
  self.inheritance_column = :race
  validates_presence_of :name

  def self.races
    %w(Lion Bear Elephant)
  end

  #scopes
  def self.lions
    where(race: 'Lion')
  end

  def self.bears
    where(race: 'Bear')
  end

  def self.elephants
    where(race: 'Elephant')
  end

  def talk
    raise "You need to override this method in your sub class"
  end

end
