function song = overTheRainbow()
one_beat_rest = makeRest(120, 'q');

% MAKE RIGHT HAND NOTES

C4_half = makeNote(120, 'h', 262, 'triangle');
% Two notes played together---
E4_half = makeNote(120, 'h', 330, 'triangle');
C5_half = makeNote(120, 'h', 523, 'triangle');
E4_C5 = (0.25*E4_half + 0.25*C5_half);

B4_quarter = makeNote(120, 'q', 494, 'triangle');
G4_eighth = makeNote(120, 'e', 392, 'triangle');
A4_eighth = makeNote(120, 'e', 440, 'triangle');
C5_quarter = makeNote(120, 'q', 523, 'triangle');
A4_half = makeNote(120, 'h', 440, 'triangle');
G4_dotted_half =  makeAnyNote(120, 'hD', 392, 'triangle');

% Right Hand Melody (sequence)
right_hand = cat(2, C4_half, E4_C5, B4_quarter, G4_eighth, A4_eighth, B4_quarter, C5_quarter, C4_half, A4_half, G4_dotted_half, one_beat_rest);


% MAKE LEFT HAND NOTES

% Two notes played together---
C3_half = makeNote(120, 'h', 131, 'triangle');
E3_half = makeNote(120, 'h', 165, 'triangle');
C3_E3_half = (0.25*C3_half + 0.25*E3_half);

A3_half = makeNote(120, 'h', 220, 'triangle');
% Two notes played together---
E3_quarter = makeNote(120, 'q', 165, 'triangle');
G3_quarter = makeNote(120, 'q', 196, 'triangle');
E3_G3_quarter = (0.25*E3_quarter + 0.25*G3_quarter);
% Two notes played together---
F3_half = makeNote(120, 'h', 175, 'triangle');
F3_A3_half = (0.25*F3_half + 0.25*A3_half);
% Two notes played together---
F3_half = makeNote(120, 'h', 175, 'triangle');
C4_half = makeNote(120, 'h', 262, 'triangle');
F3_C4_half = (0.25*F3_half + 0.25*C4_half);

C4_quarter = makeNote(120, 'q', 262, 'triangle');

% Left Hand Melody (sequence)
melody1 = cat(2, C3_E3_half, A3_half, E3_G3_quarter, one_beat_rest, G3_quarter, E3_quarter);
melody2 = cat(2, F3_A3_half, F3_C4_half, E3_quarter, G3_quarter, C4_quarter, G3_quarter);
left_hand = [melody1, melody2];
% sound(left_hand, 44100);

% Combining Melodies: RIGHT Hand + LEFT Hand--- 
song = 0.5 * right_hand + 0.5 * left_hand;
% sound(song, 44100);

% call this function from the Command Line, 
% save in a variable the sound data returned from function call
% and play the sound data


end
