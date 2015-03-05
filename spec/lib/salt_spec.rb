require_relative '../../lib/salt'

describe Salt do
  it "Generates random slat everytime it is called" do
    salts = []
    5.times { salts << described_class.generate }
    expect(salts.uniq.size).to eql 5
  end

  it "encrypts the password with salt" do
    hash = described_class.encrypt("pass", described_class.generate)
    expect(hash.size).to eql 40
  end
end
