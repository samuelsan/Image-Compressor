function centroids = computeCentroids(X, idx, K)

% Declaration of Variables
[m n] = size(X);

centroids = zeros(K, n);

% Looping over every centroid and computing the mean of all points that belong to it.
% The row vector centorids(i, :) contains the mean of the data points assigned to centroid i.

for k=1:K
	centroids(k,:) = 1./(size(X(find(idx==k)),1)).*sum(X(find(idx==k),:));
end

end

