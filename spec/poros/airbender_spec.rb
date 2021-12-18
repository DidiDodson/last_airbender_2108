require 'rails_helper'

RSpec.describe Airbender do
  let(:data) do
    { allies: ["Ty Lee"],
      enemies: ["Appa"],
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
      name: "Circus master",
      affiliation: "Fire Nation circus" }
  end

  let(:airbender) { Airbender.new(data) }

  it 'exists' do
    expect(airbender).to be_a(Airbender)
  end

  it 'has attributes' do
    expect(airbender.name).to eq("Circus master")
    expect(airbender.affiliation).to eq('Fire Nation circus')
    expect(airbender.allies.first).to eq("Ty Lee")
    expect(airbender.enemies.first).to eq("Appa")
    expect(airbender.photoUrl).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
  end
end
