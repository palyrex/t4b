require "time4break/version"

class Time4Break

  def woken
    `echo $(sysctl -a |grep waketime)`.split[-2]
  end

  def working_time
    Time.now - Time.parse(woken) 
  end

  def break_time
    working_time > 3600
  end
end

