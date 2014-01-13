require "spec_helper"

describe LorempixelRails::Picture::Size do
  context "attributes" do
    let(:default_height) { LorempixelRails::Picture::Size::DEFAULT_HEIGHT }
    let(:default_width) { LorempixelRails::Picture::Size::DEFAULT_WIDTH }
    let(:max_height) { LorempixelRails::Picture::Size::MAX_HEIGHT }
    let(:max_width) { LorempixelRails::Picture::Size::MAX_WIDTH }

    it { expect(default_height).to eql(100) }
    it { expect(default_width).to eql(100) }

    it { expect(max_height).to be_kind_of(Integer) }
    it { expect(max_height).to eql(1920) }

    it { expect(max_width).to be_kind_of(Integer) }
    it { expect(max_width).to eql(1920) }
  end

  describe "#new" do
    context "with given size" do
      let(:width) { 500 }
      let(:height) { 280 }
      let(:size) { LorempixelRails::Picture::Size.new(width, height) }

      it { expect(size).to be_kind_of(String) }
      it { expect(size).to eql("#{width}/#{height}") }
    end

    context "without given size" do
      let(:default_height) { LorempixelRails::Picture::Size::DEFAULT_HEIGHT }
      let(:default_width) { LorempixelRails::Picture::Size::DEFAULT_WIDTH }
      let(:size) { LorempixelRails::Picture::Size.new }

      it { expect(size).to be_kind_of(String) }
      it { expect(size).to eql("#{default_width}/#{default_height}") }
    end

    context "with too big size" do
      let(:default_height) { LorempixelRails::Picture::Size::DEFAULT_HEIGHT }
      let(:default_width) { LorempixelRails::Picture::Size::DEFAULT_WIDTH }
      let(:size) { LorempixelRails::Picture::Size.new(2000, 2000) }

      it { expect(size).to be_kind_of(String) }
      it { expect(size).to eql("#{default_width}/#{default_height}") }
    end
  end

  describe "#random" do
    let(:random_size) { LorempixelRails::Picture::Size.random }

    it { expect(random_size).to be_kind_of(String) }
    it { expect(random_size).to match("/") }
  end
end
