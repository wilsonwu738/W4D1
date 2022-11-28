class PolyTreeNode

    attr_reader :value, :parent, :children
    def initialize(value, parent = nil, children = [])
        @value = value
        @parent = parent
        @children = children
    end

    def parent=(node)        #A(B)
        return @parent = nil if node == nil
        @parent.children.delete(self) unless @parent == nil
        @parent = node    #setting B as A's parent 
        if !node.children.include?(self) 
            node.children << self    #set A as B's child
        end
    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        raise "error" if child_node.parent == nil
        child_node.parent = nil
    end


end