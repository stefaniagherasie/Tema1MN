function centroids = clustering_pc(points, NC)

dimP = length(points(1,:));
numP = length(points(:,1));

%inititierea centroizilor random
random = randperm(numP,NC);
centroids = points(random, :);

pos_diff = 1.;


while pos_diff gt( 0,0)

  assignment = [];

  % atribuirea fiecarui punct celui mai apropiat centroid

  if(NC == 1)
	assignment = ones(size(points,1), 1);
  else
	  dists = [];
    %calcularea distantei
	  for c = 1: NC
		d = points - repmat(centroids(c,:), size(points,1), 1);
		d = d .* d;
		d = sum(d, 2); 

		dists = [dists d];
	  end

	  [a, assignment] = min(dists');

	  assignment = assignment';
  end

  centroids_prev = centroids;

  
  %recalcularea pozitiilor centroizilor
  centroids = zeros(NC, dimP);
  pointsInCluster = zeros(NC, 1);

  for c = 1: NC
	index = find(assignment == c);
	d = points(index,:);
	centroids(c,:) = sum(d,1);
	pointsInCluster(c,1) = size(d,1);

    if( pointsInCluster(c, 1) != 0)
      centroids( c , : ) = centroids( c, : ) / pointsInCluster(c, 1);
    else
      % setare noi centroizi random
      random = randperm(numP,NC);
      centroids = points(random, :);
    end
  end

  %criteriul de oprire
  pos_diff = sum (sum( (centroids .- centroids_prev).^2 ) );
end
end