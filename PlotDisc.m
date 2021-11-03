function PlotDisc(radius, xSize, ySize, xCenter, yCenter)

set(gcf, 'position', [0, 0, xSize, ySize])
plot(xCenter, yCenter, '.k', 'MarkerSize', radius)

end
