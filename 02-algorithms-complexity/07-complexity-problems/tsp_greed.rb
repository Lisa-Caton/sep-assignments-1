require_relative 'city'

def create_graph(n)
  @city_graph= []
  n.times{
    city_name = ('a'..'z').to_a.shuffle[0, Random.rand(4..12)].join.capitalize
    city_name_x = Random.rand(200)
    city_name_y = Random.rand(300)
    city_name_array = City.new(city_name, city_name_x, city_name_y)
    @city_graph.unshift(city_name_array)
  }
  @city_graph
end

def distance(location1, location2)
   Math.hypot(location2.x - location1.x, location2.y - location1.y)
end

def nearest_neighbor(graph_of_cities, current_city)
  route = [current_city.name]
  until graph_of_cities[0].nil?
    next_city = graph_of_cities[0]
    graph_of_cities.each do |option|
      if distance(current_city, next_city) > distance(current_city, option)
        next_city = option
      end
    end
    current_city = next_city
    graph_of_cities.delete(next_city)
    #route.push(current_city.name, current_city.x, current_city.y)
    route.push(current_city.name)
  end
  route
end

home = City.new("bloc engineer", 0, 0)
# Create how ever many fiction cities you want
create_graph(15)
puts nearest_neighbor(@city_graph, home)