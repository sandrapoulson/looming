function SweepSequence(radius, numSteps, sweepSeconds, numSweeps, intermissionSeconds)

xSize = 640;
ySize = 480;

xCenters = linspace(-radius, xSize + radius, numSteps);
yCenter = ySize / 2;

for sweep=1:numSweeps
  for j=1:length(xCenters)
    xCenter = xCenters(j);
    PlotDisc(radius, xSize, ySize, xCenter, yCenter);
    hold on;
    pause(sweepSeconds / length(xCenters));
  end
  PlotDisc(0, xSize, ySize, xCenter, yCenter);
  pause(intermissionSeconds);
end
hold off;

end