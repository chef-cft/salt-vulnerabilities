# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'salt-vulnerabilities'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list ['salt::master', 'salt::minion']

default['salt']['master']['api']['config']['debug'] = false
default['salt']['master']['api']['config']['interface'] = '0.0.0.0'
default['salt']['minion']['master'] = '127.0.0.1'

cookbook 'salt'
