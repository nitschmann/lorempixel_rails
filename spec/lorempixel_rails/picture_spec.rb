require "spec_helper"

describe LorempixelRails::Picture do
  describe "#new" do
    context "with specific size and type of given list" do
      let(:options) {
        {
          :size => {:width => 300, :height => 200},
          :type => "animals"
        }
      }
      let!(:picture) { LorempixelRails::Picture.new(options) }

      it { expect(picture).to be }
      it { expect(picture).to be_kind_of(String) }
      it { expect(picture).to eql("http://lorempixel.com/300/200/animals") }
    end

    context "with specific size, type of given list and in gray" do
      let(:type) { "animals" }
      let(:options) {
        {
          :size => {:width => 300, :height => 200},
          :type => type,
          :gray => true
        }
      }
      let!(:picture) { LorempixelRails::Picture.new(options) }

      it { expect(picture).to be }
      it { expect(picture).to be_kind_of(String) }
      it { expect(picture).to eql("http://lorempixel.com/g/300/200/#{type}") }
    end

    context "without specific size and with type of given list" do
      let(:type) { "abstract" }
      let(:options) { {:type => type} }
      let!(:picture) { LorempixelRails::Picture.new(options) }

      it { expect(picture).to be }
      it { expect(picture).to be_kind_of(String) }
      it { expect(picture).to eql("http://lorempixel.com/100/100/#{type}") }
    end

    context "without specific size, with type of given list and in gray" do
      let(:type) { "abstract" }
      let(:options) { {:type => type, :gray => true} }
      let!(:picture) { LorempixelRails::Picture.new(options) }

      it { expect(picture).to be }
      it { expect(picture).to be_kind_of(String) }
      it { expect(picture).to eql("http://lorempixel.com/g/100/100/#{type}") }
    end

    context "with wrong size hash"  do
      let(:options) { {:size => {}} }

      it { expect{ LorempixelRails::Picture.new(options) }.to raise_error(ArgumentError) }
      it {
        expect{ LorempixelRails::Picture.new(options) }.to raise_error(ArgumentError, "width and height need to be set")
      }
    end

    context "with specific size and without type" do
      let(:options) { {:size => {:width => 300, :height => 200}} }
      let!(:picture) { LorempixelRails::Picture.new(options) }

      it { expect(picture).to be }
      it { expect(picture).to be_kind_of(String) }
      it { expect(picture).to eql("http://lorempixel.com/300/200/nature") }
    end

    context "without specific size and without type" do
      let!(:picture) { LorempixelRails::Picture.new }

      it { expect(picture).to be }
      it { expect(picture).to be_kind_of(String) }
      it { expect(picture).to eql("http://lorempixel.com/100/100/nature") }
    end
  end
end
