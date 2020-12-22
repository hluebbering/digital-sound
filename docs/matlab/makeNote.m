function note = makeNote(bpm, type, f, timbre)
%This function assumes that the music is in 4/4 time %with a quarter note getting one beat
%The sampling rate is assumed to be 44100 samples/sec 
secs_per_beat = 60/bpm;
%a whole note gets 4 beats in 4/4 time
if type == 'w'
    t = linspace(0, secs_per_beat*4, 44100*(secs_per_beat*4));
%a half note gets 2 beats in 4/4 time
elseif type == 'h'
    t = linspace(0, secs_per_beat*2, 44100*(secs_per_beat*2));
%a quarter note gets 1 beat in 4/4 time
elseif type == 'q'
    t = linspace(0, secs_per_beat, 44100*(secs_per_beat));
%an eighth note gets 1/2 beat in 4/4 time
elseif type == 'e'
    t = linspace(0, secs_per_beat*0.5, 44100*(secs_per_beat*0.5));
%a sixteenth note gets 1/4 beat in 4/4 time
elseif type == 's'
    t = linspace(0, secs_per_beat*0.25, 44100*(secs_per_beat*0.25));
end
% Now you have sample points with which to make the % correct length note
if strcmp(timbre,'sine')
    note = sin(2*pi*f*t);
elseif strcmp(timbre,'sawtooth')
    note = sin(2*pi*f*t);
    for i = 2:100
        note = note + sin(2*pi*i*f*t)/i;
    end

note = (2/pi)*note;
elseif strcmp(timbre,'square')
    note = sin(2*pi*f*t); 
    for i = 1:100
        note = note + (sin(2*pi*(2*i+1)*f*t))/(2*i+1);
    end

elseif strcmp(timbre,'triangle')
    note = sin(2*pi*f*t) - sin(2*pi*3*f*t)/(9); 
    for i = 1:100-1
        note = note + (sin(2*pi*(4*i+1)*f*t))/(power(4.0*i+1,2)) - (sin(2*pi*(4*i+3)*f*t))/(power(4.0*i+3,2));
    end

note = note * (8.0/(pi * pi)); 
else
    note = sin(2*pi*f*t);
end
end
