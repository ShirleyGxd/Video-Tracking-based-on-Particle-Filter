function particles = resample_step(particles, weights)
    % resaple particles according to weights
    % Input: 
    % particles: a 4xN matrix, each column is a particle
    % weights: a vector, each element corresponds to a particle
    % Output:
    % particles: resampled particles
    N=size(particles,2);
    num=0;
    new_particles=zeros(4,N);
    stds=[0.01,0.01,0.01,0.01];
    w=weights;
    while(num~=N)
        [wm,im]=max(w);
        w(im)=0;      
        for i=num+1:num+ceil(N*wm)
            new_particles(1,i)=normrnd(particles(1,im),stds(1));
            new_particles(2,i)=normrnd(particles(2,im),stds(2));
            new_particles(3,i)=normrnd(particles(3,im),stds(3));
            new_particles(4,i)=normrnd(particles(4,im),stds(1));
        end
        num=num+ceil(N*wm);
    end
    particles=new_particles;
end