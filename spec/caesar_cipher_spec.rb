require 'caesar_cipher'

describe '#caesar_cipher' do

  context 'when a string is given' do
    it 'Right shift a single word' do
      expect(caesar_cipher('hello', 2)).to eq('jgnnq')
    end
    it 'Right shift multiple words' do
      expect(caesar_cipher('beautiful world', 4)).to eq('fieyxmjyp asvph')
    end
    it 'Keep the same case' do
      expect(caesar_cipher('Hello Everyone', 4)).to eq('Lipps Izivcsri')
    end
    it 'Keep special letters' do
      expect(caesar_cipher('Is it possible? I can not believe!, me too.', 2)).to eq('Ku kv rquukdng? K ecp pqv dgnkgxg!, og vqq.')
    end
    it 'Keep numbers' do
      expect(caesar_cipher('let us count 123456789 okay', 2)).to eq('ngv wu eqwpv 123456789 qmca')
    end
  end

  context 'when an inappropriate number is given' do
    it 'Wraps from z to a' do
      expect(caesar_cipher('hi', 30)).to eq('lm')
    end
    it 'Wraps from a to z' do
      expect(caesar_cipher('hi', -5)).to eq('cd')
    end
  end

end
