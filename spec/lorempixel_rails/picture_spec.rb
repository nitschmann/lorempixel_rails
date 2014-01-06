require "spec_helper"

describe LorempixelRails::Picture do
  context "#URI" do
    specify do
      expect(LorempixelRails::Picture::URI).to be
    end

    specify do
      expect(LorempixelRails::Picture::URI).to eql("http://lorempixel.com/")
    end
  end
end
