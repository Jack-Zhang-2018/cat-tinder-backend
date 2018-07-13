require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "should validate name" do
    cat = Cat.create
    expect(cat.errors[:name]).to_not be_empty
  end


  it "should validate age" do
    cat = Cat.create
    print cat
    expect(cat.errors[:age]).to_not be_empty
  end

  it "should enjoy something" do
    cat = Cat.create
    print cat.errors[:enjoys]
    expect(cat.errors[:enjoys]).to_not be_empty
  end

  it "should enjoy something complicated" do
      cat = Cat.create(enjoys:"naps")
      expect(cat.errors[:enjoys]).to_not be_empty
  end

end
