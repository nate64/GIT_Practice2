module Git
  def self.puts_git(cmd)
    puts `git #{cmd} -h`
  end
end

module Git
  def self.git_cmd(cmd)
    puts `git #{cmd} -h`
  end
end