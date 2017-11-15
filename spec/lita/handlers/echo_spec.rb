require 'spec_helper'
require 'lita_echo'

describe Lita::Handlers::Echo, lita_handler: true do
  it { is_expected.to route_command('echo one').to(:echo) }
  it { is_expected.to route_command('echo one two three four').to(:echo) }

  describe '#echo' do
    it 'echoes single word' do
      send_command('echo one')
      expect(replies.last).to eql('echo one')
    end

    it 'echoes multiple words' do
      send_command('echo one two three four')
      expect(replies.last).to eql('echo one two three four')
    end
  end
end
