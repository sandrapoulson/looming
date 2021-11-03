

r0 = 5 ;
r1 = 11 ;
N = 20 ;
rr = linspace(r1,r0,N) ;
R = [fliplr(rr) rr] ;
axes('NextPlot', 'add');
axis off;
[X,Y,Z] = Sphere(R(1));
H = surf(X,Y,Z)
shading interp ;
axis([-1 1 -1 1 -1 1])

for iterations = 1 : 10
    for i = 1:length(R)/2
        [X,Y,Z] = Sphere(R(i)) ;
        set(H, 'XData', X, 'YData', Y, 'ZData', Z);
        set(H, 'FaceColor', [ 0 0 0 ])
        drawnow
        pause(0.1)
    end
end

