function RecordInBackground(deviceID, frameRate, numSeconds, filename)

v = videoinput('winvideo', deviceID);

% Configure the file the video will be saved to.
logfile = VideoWriter(filename, 'MPEG-4');
v.DiskLogger = logfile;
v.LoggingMode = 'disk';

v.Timeout = numSeconds;

% We capture over the specified number of seconds given the frame
% rate.
v.FramesPerTrigger = frameRate;
v.TriggerRepeat = v.Timeout - 1;

start(v)

end