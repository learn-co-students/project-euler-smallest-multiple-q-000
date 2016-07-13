describe "SmallestMultiple" do
  describe "#lcm" do
    it 'returns the LCM for 60' do
      expect(SmallestMultiple.new(5).lcm).to eq(60)
    end

    it 'returns the LCM for 420' do
      expect(SmallestMultiple.new(7).lcm).to eq(420)
    end

    it 'returns the LCM for 2520' do
      expect(SmallestMultiple.new(10).lcm).to eq(2520)
    end

    it 'returns the LCM for 20' do
      expect(SmallestMultiple.new(20).lcm).to eq(232792560)
    end
  end
end
