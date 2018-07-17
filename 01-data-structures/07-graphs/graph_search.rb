require_relative 'node'

class GraphSearch
  def initialize
    @checked_actors = []
  end

  def breadth_first_search(node, kevin_bacon)
    return "You found Bacon in the Bacon?" if node == kevin_bacon
    queue = []
    queue << node
    @checked_actors << node 
    
    while queue.any?
      current_node = queue.shift
      current_node.film_actor_hash.each do |film, cast_list|
        if cast_list.include?(kevin_bacon)
          return construct_path(current_node, film)
        else
          cast_list.each do |actor|
            next if @checked_actors.include?(actor) || queue.include?(actor)
            actor.predecessor.push(film).push(current_node) 
            queue << actor
            @checked_actors << actor
          end 
        end 
      end 
    end 
    "Kevin Bacon not found."
  end 
  
  def construct_path(current_node, last_film)
    path = [last_film]
    return path if current_node.predecessor.empty?
    while current_node.predecessor[1]
      path.unshift(current_node.predecessor[0])
      return "Kevin Bacon is more than 6 connection away." if path.length > 6
      current_node = current_node.predecessor[1]  
    end 
    path 
  end
end


