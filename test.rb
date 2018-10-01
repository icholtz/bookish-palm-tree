<% @umbrellas.each_with_index do |x, i| %>
  <li data-target="#carouselExampleIndicators" data-slide-to="<%= i %>"></li>
<% end %>
