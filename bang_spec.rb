require File.expand_path('bang')

class ObjectWithBang
  extend Bang
end

describe Bang do

  let(:object) do
    object = ObjectWithBang.new
    object.stub(:attribute).and_return(1)
    object.stub(:get_attribute).and_return(2)
    object
  end

  context 'with one banged attribute' do

    before { ObjectWithBang.send(:bang, :attribute) }

    it 'should save the attribute value' do
      object.should_receive(:update_attribute).with(:attribute, 1)
      object.attribute!
    end

  end

  context 'when the attribute and method names differ' do

    before { ObjectWithBang.send(:bang, :get_attribute => :attribute) }

    it 'should save the attribute value' do
      object.should_receive(:update_attribute).with(:attribute, 2)
      object.get_attribute!
    end

  end

end

