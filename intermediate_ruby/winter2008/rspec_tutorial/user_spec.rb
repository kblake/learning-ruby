require 'user'

describe User do
  before(:each) do
    @user = User.new
  end
  it "should be in any roles assigned to it" do
    @user.assign_role("assigned role")
    @user.should be_in_role("assigned role")
  end
  it "should NOT be in any roles not assigned to it" do
    @user.should_not be_in_role("unassigned role")
  end
end