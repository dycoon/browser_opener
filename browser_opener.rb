
class BrowserOpener

  def open(list)
    list.each do |v|
      if RUBY_PLATFORM.downcase =~ /mswin(?!ce)|mingw|cygwin|bccwin/
        cmd = "start chrome --allow-file-access-from-files #{v}"
      else
        cmd = "xdg-open #{v}"
      end
      puts "cmd #{cmd}"
      system(cmd)
      sleep 1
    end
  end

end

