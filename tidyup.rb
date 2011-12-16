%w{dns traces}.each do |data_type|

@@sorted = []
@@xs = []
@@ys = []
@@output = []

def add_file(directory, filename, server, data_type)
  timestamp, resource = filename.split('_')
  l = {:timestamp => timestamp,
    :resource => resource,
    :server => server,
    :data_type => data_type
  }
  #puts File.join(directory, filename)
  content = File.read File.join(directory, filename)
  @@sorted << [l, content]
  @@xs << timestamp
  @@ys << "#{server} .. #{resource}"
end



MAIN_DIR = File.join File.expand_path(File.dirname(__FILE__)), 'output'
servers = Dir::entries(MAIN_DIR).reject {|d| d[0..0] == '.'}
servers.each do |serverdir|
    dir = File.expand_path File.join(MAIN_DIR, serverdir, data_type)
    Dir::foreach(dir) do |filename|
      unless filename[0..0] == '.'
        add_file dir, filename, serverdir, data_type
      end
    end
end

@@xs.uniq!
@@xs.sort!
@@ys.uniq!
@@ys.sort!
@@blank_row = @@xs.collect {''}

a=[]

@@sorted.each do |l, xxx|
  x = @@xs.index(l[:timestamp])
  y = @@ys.index("#{l[:server]} .. #{l[:resource]}")
  if x and y
  @@output[y] ||= @@blank_row.clone
  @@output[y][x] = xxx
  #else
    a << "#{x},#{y}"
  end
end

#puts "a:", a.count, a.uniq.count, ''
#q=@@sorted.map(&:last)
#puts q.count, q.uniq.count
#z = @@output.flatten
#puts z.count, z.uniq.count

File.open(File.join(MAIN_DIR, '..', 'processed', "#{data_type}.csv"), 'w') do |f|
  f << (['']+@@xs).map{|t| "\"#{t.to_s.gsub('"','\'').gsub('|','')}\""}.join('|')+'|'
  f << "\n"
  @@output.each_with_index do |row,y|
    f << ([@@ys[y]]+row).map{|t| "\"#{t.to_s.gsub('"','').gsub('|','').gsub('"','')[0..1200]}\""}.join('|')+'|'
    f << "\n"
  end
end
end
