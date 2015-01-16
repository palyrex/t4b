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
        expect(t4b.need_some_rest?).to be true # test will be true or false depending how long your laptop working
      end

      it "show message if break needed" do
        expect(t4b.break_time).to eq "Please, leave your laptop alone for at least 5 minutes!"
      end
    end
end
