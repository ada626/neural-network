function [Idx,C] = my_kmeans(X,k)

iteration = 1000;
[m,n] = size(X);
c = zeros(k,n);
a = randperm(m);
r = X(a,:);
Idx = zeros(m,1);
ctemp = c;

for i = 1:k
	c(i,:) = r(i,:);
end

while(iteration>0||norm(c-ctemp)>0.00001)
	for j = 1:m
		for i = 1:k
			d(j,i) = sqrt(sum((X(j,:)-c(i,:)).^2));
		end

		[v,p] = max(d,[],2);
		Idx(j) = p;

	end

	ctemp = c;

	for i = 1:k
		pos = find(Idx == i);
		c(i,:) = mean(X(pos,:));
	end
	iteration = iteration - 1;
end







		


