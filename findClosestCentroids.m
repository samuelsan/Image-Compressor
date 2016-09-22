function idx = findClosestCentroids(X, centroids)
% This function computers the centroid memberships for each example
% idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroid
% in idx for a dataset X where each row is a single example. idx = m x 1
% vector of centroid assignments

% Set K
K = size(centroids, 1);

idx = zeros(size(X,1), 1);

% Looping over every example to find its closest centroid, and then storing
% the index inside idx at the proper location.

for i = 1:length(idx)
	distance = inf;
	for j = 1:K
		centroid_distance = norm(X(i,:) - centroids(j,:));
		if (centroid_distance < distance)
			distance = centroid_distance;
			idx(i) = j;
		end
	end
end

end

