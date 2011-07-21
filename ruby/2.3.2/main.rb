class Tree
    attr_accessor :children, :node_name

#    def initialize(name, children=[])
#        @node_name = name
#        @children = children
#    end

    def initialize(tree)
        @node_name = tree.keys[0]
        @children = []
        tree[@node_name].keys.each do |key|
            @children.push(Tree.new({key, tree[@node_name][key]}))
        end
    end


    def visit_all(&block)
        visit(&block)
        @children.each {|c| c.visit_all(&block)}
    end

    def visit(&block)
        block.call self
    end
end

#ruby_tree = Tree.new("Ruby",
#                    [Tree.new("One"),
#                     Tree.new("Two")])

ruby_tree = Tree.new({"Ruby" => { "One" => {"SubOne" => {} }, "Two" => {} } })
puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}

puts "Visiting the whole tree"
ruby_tree.visit_all {|node| puts node.node_name}
