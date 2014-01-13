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

  describe "#new" do
    context "without a name" do
      it { expect(LorempixelRails::Picture::Type.new).to eql("nature") }
    end

    context "with a name of the list" do
      let(:type) { LorempixelRails::Picture::Type.new("animals") }
      let(:type_list) { LorempixelRails::Picture::Type::PICTURE_TYPES }

      it { expect(type).to eql("animals") }
      it { expect(type_list.include?(type)).to be }
    end

    context "with a non-valid name" do
      let(:name) { "blabla" }
      let(:type) { LorempixelRails::Picture::Type.new(name) }
      let(:type_list) { LorempixelRails::Picture::Type::PICTURE_TYPES }

      it { expect(type_list.include?(name)).not_to be }
      it { expect(type).to eql("nature") }
    end
  end
end
