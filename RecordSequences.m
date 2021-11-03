function RecordSequences(cam, numSeconds, output)

v = VideoWriter(output, "Uncompressed AVI");
open(v);

t0 = clock;
while etime(clock, t0) < numSeconds
    I = snapshot(cam);
    writeVideo(v, I);
end

close(v);

end