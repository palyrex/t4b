require "time4break/version"

class Time4Break

  def woken
    `echo $(sysctl -a |grep waketime)`.split[-2]
  end

  def working_time
    Time.now - Time.parse(woken) 
  end

  def need_some_rest?
    working_time > 3600
  end

  def break_time
    "Please, leave your laptop alone for at least 5 minutes!" if need_some_rest?
  end

end

