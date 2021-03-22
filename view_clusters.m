% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	% TODO graphical representation coded here 
  NC = length(centroids(:,1));
  numP = length(points(:,1));
  cluster_index = zeros(numP, 1);
  
  for i = 1:numP
    dist_min = -1;
    for j = 1:NC
      d  = norm(points(i, :) - centroids(j,:));
      if d < dist_min || dist_min == -1
        dist_min = d;
        nc_index = j;
      endif
	  endfor
    color_code(i,1) = nc_index; 
  endfor
  
  scatter3(points(:, 1), points(:, 2), points(:, 3), [], color_code(:, 1),'filled' );
end

