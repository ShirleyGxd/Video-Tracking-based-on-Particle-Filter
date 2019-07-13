function weights = weighting_step(img, particles, sz_I, y, feature_type)
    % This function first compute feature for each particle, then compute
    % similarity between features of particles and y
    
    % Input:
    % img: input image
    % particles£ºa 4xN matrix, each col corresponds to a particle state
    % sz_I: base size that a rect should be resized to
    % y: the feature of the last tracked rect.
    % feature_type: the type of feature
    % Oputput:
    % weights: a vector, each element corresponds to a particle
    N=size(particles,2);
    rows=size(y,1);
    Y=zeros(rows,N);
    for i=1:N
        rect=convert_particle_2_rect(particles(:,i), sz_I);
        Y(:,i) = feature_extract(img, rect, sz_I, feature_type);
    end
    s=compute_similarity(Y, y);
    for j=1:N
        if (s(j)==0)
            s(j)=s(j)+eps;
        end
    end
        s=1.0 ./ s;
        weights=s./sum(s);
 
end