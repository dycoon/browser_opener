
$LOAD_PATH.push('.')

require 'url_list'
url_list = URL_LIST

puts "url_list #{url_list}"

url_list.each do |v|
  if RUBY_PLATFORM.downcase =~ /mswin(?!ce)|mingw|cygwin|bccwin/
    cmd = "start chrome --allow-file-access-from-files #{v}"
  else
    cmd = "xdg-open #{v}"
  end
  puts "cmd #{cmd}"
  system(cmd)
  sleep 1
end
