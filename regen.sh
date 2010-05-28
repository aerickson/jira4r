#!/bin/sh

mkdir tmp || exit 1
cd tmp

wsdl2ruby.rb --wsdl ../wsdl/jirasoapservice-v2.wsdl --type client --module_path "Jira4R::V2" --classdef jira

sed -i .old 's/jira\.local\.twitter\.com/jira.atlassian.com/g' *.rb
sed -i .old 's/require .jira\.rb.//g' *.rb
sed -i .old 's/require .jiraMappingRegistry\.rb.//g' *.rb

mv jira.rb jira_service.rb
mv jiraMappingRegistry.rb jira_service_mapping_registry.rb
mv jiraDriver.rb jira_soap_service_driver.rb

rm JiraSoapServiceServiceClient.rb
rm *.old

mv *.rb ../lib/jira4r/v2/

cd ..

rmdir tmp
