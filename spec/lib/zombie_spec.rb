require_relative "../spec_helper"
require_relative "zombie"

describe Zombie do
    # your examples (tsets) go here
    it "is named Jasper" do
      zombie = Zombie.new

      # expectation
      #zombie.name.should eq('Jasper')
      # or
      zombie.name.should == 'Jasper'

      #specify { expect(zombie.name).to eq('Jasper')}

    end

    it "has no brains" do
      zombie = Zombie.new
      zombie.brains.should < 1
    end

    it "should not be alive" do
      zombie = Zombie.new
      zombie.alive.should == false
      # or
      # zombie.alive.should be_false # using the be_ matcher, yuck
    end

    it "should have height of 5" do
      zombie = Zombie.new
      zombie.height >= 5
      # or
      # zombie.height.should be >= 5 # using the be matcher, yuck
      # or
      # zombie.height.should_not < 5
    end

  it "should be hungry" do
    zombie = Zombie.new
    zombie.hungry?.should == true
    # or
    #zombie.should be_hungry

  end

  # pending
  xit "should be shambling" do
    # or
    # pending
  end

end