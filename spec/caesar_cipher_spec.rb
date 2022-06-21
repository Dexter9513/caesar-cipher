require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'works with lowercase strings' do
    expect(caesar_cipher('helloworld', 2)).to eql('jgnnqyqtnf')
  end

  it 'works with uppercase strings' do
    expect(caesar_cipher('HELLOWORLD', 2)).to eql('JGNNQYQTNF')
  end

  it 'works with mix of lower and uppercase strings' do
    expect(caesar_cipher('hEllOwOrLD', 2)).to eql('jGnnQyQtNF')
  end

  it 'works with spaces' do
    expect(caesar_cipher('Hello World', 2)).to eql('Jgnnq Yqtnf')
  end

  it 'works with symbols' do
    expect(caesar_cipher('"Hello World!"', 2)).to eql('"Jgnnq Yqtnf!"')
  end

  it 'has alphabet wrapping' do
    expect(caesar_cipher('XYZABC', 4)).to eql('BCDEFG')
  end

  it 'works with negative shift' do
    expect(caesar_cipher('ABC', -4)).to eql('WXY')
  end

end
