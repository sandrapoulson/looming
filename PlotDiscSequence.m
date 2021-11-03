function PlotDiscSequence(minRadius, maxRadius, numSteps, sweepSeconds, numSweeps, intermissionSeconds)

radii = linspace(minRadius, maxRadius, numSteps);

for sweep=1:numSweeps
  for j=1:length(radii)
    radius = radii(j);
    PlotDisc(radius);
    hold on;
    pause(sweepSeconds / length(radii));
  end
  PlotDisc(0);
  pause(intermissionSeconds);
end
hold off;

end