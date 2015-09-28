#
#== ディレクトリ階層をツリー表示する。
#
def tree( path, stack=[], has_next=false, &block )
  puts stack.join << (has_next ? "├" : "└" ) << File.basename( path )
  if File.directory? path
    list = []
    Dir.foreach( path ) {|d|
      dir = path + "/" + d
      next if d == "." || d == ".." || ( block_given? && !block.call(dir) )
      list << dir
    }
    stack << (has_next ? "│　" : "　　")
    list.each_index {|i|
      tree( list[i], stack, i < list.size-1, &block )
    }
    stack.pop
  end
end

# 指定ディレクトリ配下をツリー表示する
str = ARGV[0]
tree(str)