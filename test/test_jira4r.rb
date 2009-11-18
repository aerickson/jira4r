
require 'helper'

class TestJira4r < Test::Unit::TestCase
  should "be able to instantiate an demo" do
    jira = Jira4R::JiraTool.new(2, "http://jira.atlassian.com")
    jira.login("soaptester", "soaptester")
    assert_equal jira.getProjectByKey("DEMO").key, "DEMO"
  end
end
