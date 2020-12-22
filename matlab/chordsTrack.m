function chords = chordsTrack()
% chords lined up one after the other, matching up at key points with melody track
% Each chord is the sum of single-pitch notes

% MAKE LEFT HAND NOTES (KEY OF A FLAT)
% Play all B's, E's, A's and D's FLAT frequency
rest = makeRest(120, 'h');
E4_half = makeNote(120, 'h', 311, 'triangle');
B3_half = makeNote(120, 'h', 234, 'triangle');
A3_half = makeNote(120, 'h', 208, 'triangle');
D4_half = makeNote(120, 'h', 277, 'triangle');
G3_half = makeNote(120, 'h', 196, 'triangle');
F3_half = makeNote(120, 'h', 171, 'triangle');
C4_half = makeNote(120, 'h', 262, 'triangle');

% MAKE CHORDS
% chords created by summing notes 
chord1 = 0.25 * E4_half + 0.25 * B3_half + 0.25 * G3_half;
chord1_rest = cat(2, chord1, rest);

chord2 = 0.25 * D4_half + 0.25 * B3_half + 0.25 * F3_half;
chord2_rest = cat(2, chord2, rest);

chord3 = 0.25 * D4_half + 0.25 * B3_half + 0.25 * F3_half;
chord3_rest = cat(2, chord3, rest);

chord4 = 0.25 * F3_half + 0.25 * A3_half + 0.25 * C4_half;
chord4_rest = cat(2, chord4, rest);


% RIGHT HAND KEYS (KEY OF A FLAT)
% Play all B's, E's, A's and D's flat frequency
B4_eighth = makeNote(120, 'e', 466, 'triangle');
B4_quarter = makeNote(120, 'q', 466, 'triangle');
B4_half = makeNote(120, 'h', 466, 'triangle');
E5_quarter = makeNote(120, 'q', 622, 'triangle');
E5_eighth = makeNote(120, 'e', 622, 'triangle');
A4_half = makeNote(120, 'h', 415, 'triangle');
D5_quarter = makeNote(120, 'q', 554, 'triangle');
D5_eighth = makeNote(120, 'e', 554, 'triangle');
C5_quarter = makeNote(120, 'q', 523, 'triangle');
C5_eighth = makeNote(120, 'e', 523, 'triangle');
% RIGHT HAND MELODY
melody1 = cat(2, E5_quarter, E5_quarter, E5_quarter, E5_eighth, C5_eighth);
melody2 = cat(2, D5_quarter, C5_quarter, B4_half);
melody3 = cat(2, D5_quarter, D5_quarter, D5_quarter, D5_eighth, B4_eighth); 
melody4 = cat(2, C5_quarter, B4_quarter, A4_half);

% COMBINING LEFT HAND CHORDS AND RIGHT HAND MELODY
% in order to sum two lists of sound samples, 
% the two lists must have exactly the same number of numbers in them
part1 = chord1_rest + 0.25 * melody1;
part2 = chord2_rest + 0.25 * melody2;
part3 = chord3_rest + 0.25 * melody3;
part4 = chord4_rest + 0.25 * melody4;

% track is created by concatenating chords
chords = cat(2, part1, part2, part3, part4, part1, part2, part3, part4);


end


