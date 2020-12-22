function mySong = myMusic()
% Modeling music in 3 parts--representing tracks in a DAW:
% SONG: Clocks written by Coldplay

% save each of the 3 tracks in a separate MATLAB variable:
drone = droneTrack();
melody = melodyTrack();
chords = chordsTrack();

% combining droneTrack with melodyTrack
part1 = 0.25 * melody + 0.25 * drone;
part2 = chords;

% sum variables in a variable called mySong
% lined up one after another using concatenation
% assumed music will be constructed at a sampling rate of 44100 Hz (i.e., samples/second)
mySong = cat(2, part1, part2);

% export mySong as uncompressed WAV audio file called mySong.wav.
audiowrite('mySong.wav', mySong, 44100);

end
