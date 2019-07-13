function particles = transition_step(particles, stds)
    % Sample particles from gaussian distribution N(particles, stds)
    % Input:
    % particles:  a matrix of 4 rows and n_particles cols
    % stds: a 4 dimention vector, each is a standard deviation for a
    % dimension of particle
    % Ouput:
    % particles: output particles
    N=size(particles,2);
    for i=1:N
        c_x=particles(1,i);
        c_y=particles(2,i);
        s_x=particles(3,i);
        s_y=particles(4,i);
        nextc_x=normrnd(c_x,stds(1));
        nextc_y=normrnd(c_y,stds(2));
        nexts_x=normrnd(s_x,stds(3));
        nexts_y=normrnd(s_y,stds(4));
        particles(:,i)=round([nextc_x, nextc_y, nexts_x, nexts_y]');
    end
    
end