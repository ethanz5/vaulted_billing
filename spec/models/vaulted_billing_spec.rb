require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe VaultedBilling do
  it "returns the requested Gateway" do
    VaultedBilling.gateway(:bogus).should == VaultedBilling::Gateways::Bogus
  end
end
