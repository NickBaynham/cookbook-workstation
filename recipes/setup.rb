package 'tree' do
	action :install
end

package 'ntp'
package 'git'

template '/etc/motd' do
	source 'motd.erb'
	action :create
end
