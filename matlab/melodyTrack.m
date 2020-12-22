function song = melodyTrack()
% single-pitch notes created from TRIANGLE waves
% MAKE RIGHT HAND NOTES
D5_eighth = makeNote(120, 'e', 587, 'triangle');
A4_eighth = makeNote(120, 'e', 440, 'triangle');
F4_eighth = makeNote(120, 'e', 349, 'triangle');
C5_eighth = makeNote(120, 'e', 523, 'triangle');
E4_eighth = makeNote(120, 'e', 330, 'triangle');
B4_eighth = makeNote(120, 'e', 494, 'triangle');
G4_eighth = makeNote(120, 'e', 392, 'triangle');
G4_quarter = makeNote(120, 'q', 392, 'triangle');
E4_quarter = makeNote(120, 'q', 330, 'triangle');
B4_half = makeNote(120, 'h', 494, 'triangle');

% COMBINE RIGHT HAND MELODIES
% lined up one after another using concatenation
melody1 = cat(2, D5_eighth, A4_eighth, F4_eighth, D5_eighth, A4_eighth, F4_eighth, D5_eighth, A4_eighth);
melody2 = cat(2, C5_eighth, A4_eighth, E4_eighth, C5_eighth, A4_eighth, E4_eighth, C5_eighth, A4_eighth);
melody3 = cat(2, C5_eighth, A4_eighth, E4_eighth, C5_eighth, A4_eighth, E4_eighth, C5_eighth, A4_eighth);
melody4 =  cat(2, B4_eighth, G4_eighth, E4_eighth, B4_eighth, G4_quarter, E4_quarter, B4_half);
melody5 = cat(2, D5_eighth, A4_eighth, F4_eighth, D5_eighth, A4_eighth, F4_eighth, D5_eighth, A4_eighth);
melody6 = cat(2, C5_eighth, A4_eighth, E4_eighth, C5_eighth, A4_eighth, E4_eighth, C5_eighth, A4_eighth);
melody7 = cat(2, C5_eighth, A4_eighth, E4_eighth, C5_eighth, A4_eighth, E4_eighth, C5_eighth, A4_eighth);
melody8 = cat(2, B4_eighth, G4_eighth, E4_eighth, B4_eighth, G4_quarter, E4_quarter, B4_half);

% RIGHT HAND MELODY ALL TOGETHER
% lined up one after another using concatenation
song = cat(2, melody1, melody2, melody3, melody4, melody5, melody6, melody7, melody8);

end

