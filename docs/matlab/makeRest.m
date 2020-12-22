function rest = makeRest(bpm, type)
%This function assumes that a quarter note gets one beat 
secs_per_beat = 60.0/bpm;
samps_per_beat = secs_per_beat*44100;
if type == 'w'
    rest = zeros(samps_per_beat*4, 1); 
elseif type == 'h'
    rest = zeros(samps_per_beat*2, 1); 
elseif type == 'q'
    rest = zeros(samps_per_beat, 1); 
elseif type == 'e'
    rest = zeros(samps_per_beat/2.0, 1); 
elseif type == 's'
    rest = zeros(samps_per_beat/4.0, 1);
end
rest = transpose(rest);
end
