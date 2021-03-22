function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
  cluster_cost = zeros(1, 10);
  for NC = 1:10
      format long g;
      points = load("-ascii", file_points);
   
      centroids = clustering_pc(points, NC);
      cost = compute_cost_pc(points, centroids);
      cluster_cost(NC) = cost;
  endfor
  plot(cluster_cost);
end

