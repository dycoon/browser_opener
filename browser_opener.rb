
class BrowserOpener

  def open(list)
    list.each do |v|
      if RUBY_PLATFORM.downcase =~ /mswin(?!ce)|mingw|cygwin|bccwin/
        cmd = "start chrome #{v}"
      else
        cmd = "xdg-open #{v}"
      end
      puts "cmd #{cmd}"
      system(cmd)
      sleep 1
    end
  end

end

