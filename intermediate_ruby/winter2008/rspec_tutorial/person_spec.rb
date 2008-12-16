require 'person'

describe Person do
  before(:each) do
    @person = Person.new
  end

  it "should read firstname" do
    @person.should respond_to(:firstname)
  end

  it "should read lastname" do
    @person.should respond_to(:lastname)
  end

  it "should update firstname" do
    @person.firstname = "John"
    @person.firstname.should == "John"
  end

  it "should update last name" do
    @person.lastname = "Doe"
    @person.lastname.should == "Doe"
  end

  it "should print full name" do
    @person.firstname = "John"
    @person.lastname = "Doe"
    @person.full_name.should == "John Doe"
  end
end
