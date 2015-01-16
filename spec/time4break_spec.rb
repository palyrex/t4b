require 'spec_helper'

describe Time4Break do

  let(:t4b) { Time4Break.new }

  it "show time when laptop being woken as a 'hour : minutes : seconds' " do
    expect(t4b.woken).to eq `echo $(sysctl -a |grep waketime)`.split[-2]
  end

  it "show current working time in seconds" do
    expect(t4b.working_time).to be > 0
  end

    context "mandatory break" do 
      it "if current working time is more than 1 hour" do
        expect(t4b.break_time).to be false
      end
    end
end
