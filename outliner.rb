def twerk(string)
  string.gsub!(/\#\#/, '')
  string.gsub!(/\[([^\]]+)\].*/, '\\1') if string =~ /\[/
  string.gsub!(/:\s*\Z/, '')
  string
end

outlines = {}
weeks = 1..21
weeks.each do |week|
  file = "weeks/%{week}/Overview.md" % {week: '%02d' % week}
  if File.exist?(file) && overview = File.readlines(file)
    outline = overview.each_with_object([]) do |line, ol|
      ol << line.strip if /\A\#\#[^#]/ =~ line unless /Synopsis/ =~ line
    end
    outlines[week] = outline
  else
    # puts "week #{week} no :("
  end
end

outlines.each do |week, list|
  puts "## Week #{week}"
  list.each_with_index do |item, i|
    puts "#{i+1}. #{twerk(item)}"
  end
  puts "\n"
end