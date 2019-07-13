function s = compute_similarity(Y, y)
    % Compute similarity between y and Y
    % Input:
    % Y: a dxN matrix, d is the dimension of feature, N is number of particle
    % Y contains features for each particle
    % y: feature of the last tracked rect
    % Ouptput:
    % s: a vector indicates the similarity between each column of Y and y
    N=size(Y,2);
    s=zeros(1,N);
    for i=1:N
        s(i)=sum((Y(:,i)-y).^2);
    end
end