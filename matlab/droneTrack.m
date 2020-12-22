function drone = droneTrack()
% a repeated or sustained single-frequency note
% used off and on throughout piece

% MAKE LEFT HAND NOTES
D3_quarter = makeNote(120, 'q', 147, 'triangle');
A2_quarter = makeNote(120, 'q', 110, 'triangle');
E3_quarter = makeNote(120, 'q', 165, 'triangle');
E3_half = makeNote(120, 'h', 165, 'triangle');

% COMBINE LEFT HAND NOTES
part1 = cat(2, D3_quarter, D3_quarter, D3_quarter, D3_quarter);
part2 = cat(2, A2_quarter, A2_quarter, A2_quarter, A2_quarter);
part3 = cat(2, A2_quarter, A2_quarter, A2_quarter, A2_quarter);
part4 = cat(2, E3_quarter, E3_quarter, E3_quarter, E3_quarter, E3_half);

% lined up one after another using concatenation
drone = cat(2, part1, part2, part3, part4, part1, part2, part3, part4);

end


