
class GordanBot
  def self.map
    {
      48 => "use zfs, use docker.",
      99 => "have you tried killing all the poor?",
      69 => "i don't have to help you.",
      11 => "STARVE PEASANT!",
      15 => "everything you've just said could be solved with zfs send.",
      33 => "DEVOPS AS FUCK",
      34 => "Even if it's DevOps-ed as fook and everything is on ZFS I wouldn't deem that a plausible schedule.",
      101 => "Bro, do you even OpenStack?",
      102 => "Supply and demand.",
      110 => "Landmines.",
      111 => "Use sunwarrior, use water."
    }
  end

  def self.handle_message(m)
    #return "#{m.user}: no"

    if m.raw.match /DEVOPS AS FUCK/
      sleep 1
      return "DEVOPS AS FUCK"
    end

    a = Random.rand(2500)

    map.each do |n, val|
      if a == n
        sleep 0.7

        if Random.rand(5) == 2
          val = "#{m.user}: #{val}"
        end

        return val
      end
    end

    false
  end
end
