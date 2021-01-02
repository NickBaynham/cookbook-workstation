package 'tree' do
	action :install
end

package 'ntp'
package 'git'

file '/etc/motd' do
	content "This server is the property of Nick Baynham
	HOSTNAME: #{node['hostname']}
	IPADDRESS: #{node['ipaddress']}
	Memory: #{node['memory']['total']}
	CPU: #{node['cpu']['0']['mhz']}
	"
        action :create
	owner 'root'
	group 'root'
end
