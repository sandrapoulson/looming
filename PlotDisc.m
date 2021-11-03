function PlotDisc(radius, xSize, ySize, xCenter, yCenter)


[columnsInImage, rowsInImage] = meshgrid(1:xSize, 1:ySize);
discPixels = (rowsInImage - yCenter).^2 + (columnsInImage - xCenter).^2 <= radius.^2;

image(discPixels);
colormap([1 1 1; 0 0 0]);

end