require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do
  it("attaches one point to english characters valued at 'one point' in popular boardgame 'Scrabble'") do
    expect(("list").scrabble_score()).to(eq(4))
  end
  it("attaches the remaining english characters to their appropriate Scrabble values") do
    expect(("adbfkjq").scrabble_score()).to(eq(33))
  end
end

describe('String#scrabble_cook') do
  it("prepares input characters to be assigned a value regardless of case") do
    expect(("RoCkY").scrabble_cook()).to(eq(14))
  end
end

describe ('String#scrabble_cook') do
  it("only allows capital or lowercase letters to pass through the argument") do
    expect(("fa$t").scrabble_cook()).to(eq("You shall not pass!"))
  end
end
