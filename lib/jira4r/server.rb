module Jira4R
  class Server < JiraTool
    def self.connect_to(*args)
      options = args.extract_options!
      server = self.new("2",options[:host])
      server.login(options[:username], options[:password]) if server
      server
    end
  end
end