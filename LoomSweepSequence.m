cameraDeviceID = 2;
videoName = 'sequences.mp4';

% Configure the initial setup delay.
initialPauseSeconds = 10;

% Configure the shared parameters between looms and sweeps.
intermissionSeconds = 10;

% Configure the looms.
minLoomRadius = 0.;
maxLoomRadius = 240.;
numLoomSteps = 30;
loomSeconds = 2;
numLooms = 3;

% Configure the sweeps.
sweepRadius = 100;
numSweepSteps = 30;
sweepSeconds = 2;
numSweeps = 3;

% Compute the total record time based upon the experiment configuration.
numVideoSeconds = initialPauseSeconds + ...
    numLooms * (loomSeconds + intermissionSeconds) + ...
    numSweeps * (sweepSeconds + intermissionSeconds);

% Start recording.
RecordInBackground(cameraDeviceID, numVideoSeconds, videoName);

% Perform the initial delay before the looms and sweeps.
pause(initialPauseSeconds);

% Perform the loom sequences.
LoomSequence(minLoomRadius, maxLoomRadius, numLoomSteps, loomSeconds, ...
    numLooms, intermissionSeconds);

% Perform the sweep sequences.
SweepSequence(sweepRadius, numSweepSteps, sweepSeconds, numSweeps, ...
    intermissionSeconds);