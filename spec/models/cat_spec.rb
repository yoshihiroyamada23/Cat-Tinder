require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "is a valid cat" do 
    expect(Cat.create(name: 'Luffy', age: 2, enjoys: 'Walks in the park', image: 'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2F0c3xlbnwwfHwwfHx8MA%3D%3D')).to be_valid
  end
  it "should validate name" do
    cat = Cat.create(age: 2, enjoys: 'Walks in the park', image: 'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2F0c3xlbnwwfHwwfHx8MA%3D%3D')
    expect(cat.errors[:name]).to_not be_empty
  end
  it "has a valid age" do
    cat = Cat.create(name: "Luffy", enjoys: 'Walks in the park', image: 'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&
    ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2F0c3xlbnwwfHwwfHx8MA%3D%3D')
    expect(cat.errors[:age]).to include "can't be blank"
  end
  it "has a valid enjoys" do
    cat = Cat.create(name: "Luffy", age: 2, image: 'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2F0c3xlbnwwfHwwfHx8MA%3D%3D')
    expect(cat.errors[:enjoys]).to include "can't be blank"
  end
  it "has a valid image" do
    cat = Cat.create(name: "Luffy", age: 2, enjoys: 'Walks in the park')
    expect(cat.errors[:image]).to include "can't be blank"
  end
  it "has an enjoys attribute that is at least 10 characters" do
    cat = Cat.create(name: "Straw Hat Luffy", age: 2, enjoys: 'eating', image: 'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2F0c3xlbnwwfHwwfHx8MA%3D%3D')
    expect(cat.errors[:enjoys]).to include "is too short (minimum is 10 characters)"
  end
end
