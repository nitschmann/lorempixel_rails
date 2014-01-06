require "spec_helper"

describe LorempixelRails::Picture::Type do
  describe "PICTURE_TYPES" do
    types = LorempixelRails::Picture::Type::PICTURE_TYPES
    specify { expect(types).to be }

    it "is an array" do
      expect(types).to be_kind_of(Array)
    end

    it "consists 13 elements" do
      expect(types.length).to eql(13)
    end
  end

  describe "#DEFAULT_TYPE" do
    let(:type_list) { LorempixelRails::Picture::Type::PICTURE_TYPES }
    let(:default_type) { LorempixelRails::Picture::Type::DEFAULT_TYPE }

    specify { expect(default_type).to be }
    specify { expect(default_type).to be_kind_of(String) }
    specify { expect(default_type).to eql("nature") }

    it "is an type of the type list" do
      expect(type_list.include?(default_type)).to be
    end
  end

  describe "#random" do
    let(:random_type) { LorempixelRails::Picture::Type.random }
    let(:type_list) { LorempixelRails::Picture::Type::PICTURE_TYPES }

    it "returns a random picture type of the list" do
      expect(type_list.include?(random_type)).to be
    end
  end
end
