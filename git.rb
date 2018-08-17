module Git
  def self.puts_git(cmd)
    puts `git #{cmd} -h`
  end
end

module Git
<<<<<<< HEAD
  def self.git_cmd(cmd)
    puts `git #{cmd} -h`
  end
end
=======
  def self.puts_git(cmd)
    puts `git #{cmd} -h`
  end

  def self.config
    puts `git config -l`
  end
end

def self.display_cmd(cmd)
>>>>>>> messing_around_display git config
