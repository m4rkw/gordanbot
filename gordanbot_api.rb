
class GordanBot
  def self.map
    { 
      48 => "use gayfs, use cockdocker.",
      99 => "have you tried killing all the poor?",
      69 => "i don't have to help you.",
      11 => "STARVE PEASANT!",
      15 => "everything you've just said could be solved with zfs send.",
      33 => "DEVOPS AS FUCK",
      34 => "Even if it's DevOps-ed as fook and everything is on ZFS I wouldn't deem that a plausible schedule.",
      101 => "Bro, do you even OpenStack?",
      102 => "Supply and demand.",
      110 => "Landmines.",
      111 => "Use sunwarrior, use water.",
      112 => "Hitler was a socialist",
      113 => "STRING THEM UP!",
      114 => "Back in Chechnya, we had to duck to avoid machine gun fire before we even got to our desks to BOFH.",
      115 => "Lock them in a room with Linus and Theo and don't open it until they're all dead.",
      116 => "Psh! It doesn't even support partitions",
      117 => "Do you even VACUUM FULL ANALYZE, uppity pondslime?",
      118 => "Don't worry, fainting is a normal reaction to seeing my rate card.",
      119 => "You just don't understand the true nature of InnoDB.",
      120 => "It's a liberal conspiracy to steal from the hard-working typist",
      121 => "Just because *you* can't write Perl doesn't mean we all can't.",
      122 => "Give up now, it's quicker than failing.",
      150 => "That's gayer than mysql's clustering algorithm",
      151 => "Bend over and let me shove mysql up there",
      152 => "BEGIN; INSERT (genitals) INTO (ANUS); COMMIT; -- Shit! ROLLBACK! ROLLBACK!",
      153 => "SELECT * FROM men INNER JOIN men WHERE genitals IN ass",
      154 => "UNION ALL -- Pride, yo!",
      155 => "Vote gay, vote InnoDB!",
      156 => "I've heard some pretty gay things in my time, but partitioning is 'up there', as us gays say",
      157 => "MySQL is the biggest powerbottom of all, it'll take anything you shove in it til it falls over",
      158 => "If you want me like that, you'd better share your MyISAM tuning secrets",
      159 => "Seriously dude, use MySQL. Nothing will fuck you harder, guaranteed!"
    }
  end

  def self.handle_message(m)
    #return "#{m.user}: no"

    if m.raw.match /DEVOPS AS FUCK/
      sleep 1
      return "DEVOPS AS FUCK"
    elsif m.raw.match /docker/i
      sleep 1
      return "Where you put your penis is up to you, but I don't want to hear about it."
    elsif m.raw.match /openstack/i
      sleep 1
      return "More like opencrack, amirite?"
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
