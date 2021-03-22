% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
  NC = length(centroids(:,1));
  numP = length(points(:,1));
  cost_centr = zeros(1, NC);
  for i = 1:numP
    dist_min = -1;
    for j = 1:NC
      nc_current = 1;
      d  = sqrt(sum((points(i, :) - centroids(j,:) ).^2));
      if d < dist_min || dist_min == -1
        dist_min = d;
        nc_current = NC;
      endif
	  endfor
    cost_centr(nc_current) = cost_centr(nc_current) + dist_min;
     
  endfor
  cost = sum(cost_centr);
end

