directory 'C:/chef/ohai/hints' do
  action :create
  recursive true
end

file 'C:/chef/ohai/hints/ec2.json' do
  content ''
end
