class Tree
    attr_accessor :children, :node_name

    
    def initialize(hash)
        @node_name = hash.keys.first
        @children = [] 
        hash[@node_name].each { |n,c| @children.push(Tree.new(n => c)) }
    end
    
    def visit_all(&block)
        visit &block
        children.each { |child| child.visit_all &block }
    end

    def visit(&block)
        block.call self
    end
end


#tree_one = Tree.new("Root", [Tree.new("ChildOne"), Tree.new("ChildTwo")])

copied_tree = Tree.new({"grandpa" => {"dad" => {"child1" => {}, "child2" => {}}, "uncle" => {"child3" => {}, "child4" => {}}}})

copied_tree.visit { |node| puts node.node_name }
copied_tree.visit_all { |node| puts node.node_name }

