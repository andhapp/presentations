require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "ArrayExtension" do
  it "should convert [1,2,3] => {1=>1, 2=>2, 3=>3}" do
    [1,2,3].to_hash.should == {1=>1, 2=>2, 3=>3}
  end
end
