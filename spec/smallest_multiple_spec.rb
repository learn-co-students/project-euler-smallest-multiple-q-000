describe "smallest_multiple(input)" do
    it 'returns the LCM for 5' do
      expect(smallest_multiple(5)).to eq(60)
    end

    it 'returns the LCM for 7' do
      expect(smallest_multiple(7)).to eq(420)
    end

    it 'returns the LCM for 10' do
      expect(smallest_multiple(10)).to eq(2520)
    end

    it 'returns the LCM for 20' do
      expect(smallest_multiple(20)).to eq(232792560)
    end
  end
