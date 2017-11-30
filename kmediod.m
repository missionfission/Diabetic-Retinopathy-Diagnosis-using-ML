%%  
X=load('left.mat');
for k= 1:10	
	idx=kmedoids(X,k,"distance","Euclidean");	
	s=silhouette(X,idx,"distance","Euclidean");
end
plot(mean(s),k);