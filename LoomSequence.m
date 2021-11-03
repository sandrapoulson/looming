function LoomSequence(minRadius, maxRadius, numSteps, sweepSeconds, numSweeps, intermissionSeconds)

xSize = 640;
ySize = 480;
xCenter = xSize / 2;
yCenter = ySize / 2;

radii = linspace(minRadius, maxRadius, numSteps);

for sweep=1:numSweeps
  for j=1:length(radii)
    radius = radii(j);
    PlotDisc(radius, xSize, ySize, xCenter, yCenter);
    hold on;
    pause(sweepSeconds / length(radii));
  end
  PlotDisc(0, xSize, ySize, xCenter, yCenter);
  pause(intermissionSeconds);
end
hold off;

end