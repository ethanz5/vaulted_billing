require File.expand_path('../../spec_helper', __FILE__)

describe VaultedBilling do
  it "returns the requested Gateway" do
    VaultedBilling.gateway(:bogus).should == VaultedBilling::Gateways::Bogus
  end

  context 'config' do
    subject { VaultedBilling.config }
    it { should be_kind_of VaultedBilling::Configuration }

    it 'return a consistant instance' do
      subject.object_id.should == VaultedBilling.config.object_id
    end
  end
end
