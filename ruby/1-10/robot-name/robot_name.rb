class Robot
  attr_accessor :name

  def initialize
    reset
  end

  def reset
    prng = Random.new
    @name = (65 + prng.rand(25)).chr + (65 + prng.rand(25)).chr + prng.rand(100..999).to_s
  end
end