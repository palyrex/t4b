require 'spec_helper'

describe Time4Break do

  let(:t4b) { Time4Break }

  woken_up_time = `echo $(sysctl -a |grep waketime)`.split[-2]

  it "show time when laptop being woken up as a 'hour : minutes : seconds' " do
    expect(t4b.woken).to eq woken_up_time
  end

  it "show current working time in seconds" do
    expect(t4b.working_time).to be > 0
  end

    context "mandatory break" do 
      it "if current working time is more than 1 hour" do 
        expect(t4b.need_some_rest?).to be false # true # test will fail or not depending how long your laptop working
      end

      it "show message if break needed" do
        expect(t4b.t4b).to eq "Carry on working" # "Please, leave your laptop alone for at least 5 minutes!" # test will fail or not depending how long your laptop working
      end
    end
end
