%%% Discant symbols for 3 reed accordions.
%%% Concept from http://lsr.dsi.unimi.it/LSR/Item?id=194.
%%% When called, prefix with "^" or "_".

accBassoon =
  \markup
    \combine
    \musicglyph #"accordion.discant"
    \raise #0.5 \musicglyph #"accordion.dot"

accBandoneon =
  \markup
    \combine
    \musicglyph #"accordion.discant"
      \combine
      \raise #0.5 \musicglyph #"accordion.dot"
      \raise #1.5 \musicglyph #"accordion.dot"

accOrgan =
  \markup
    \combine
    \musicglyph #"accordion.discant"
      \combine
      \raise #0.5 \musicglyph #"accordion.dot"
      \raise #2.5 \musicglyph #"accordion.dot"

accMaster =
  \markup
    \combine
    \musicglyph #"accordion.discant"
      \combine
      \raise #0.5 \musicglyph #"accordion.dot"
        \combine
        \raise #1.5 \musicglyph #"accordion.dot"
        \raise #2.5 \musicglyph #"accordion.dot"

accOboe =
  \markup
    \combine
    \musicglyph #"accordion.discant"
      \combine
      \raise #1.5 \musicglyph #"accordion.dot"
      \raise #2.5 \musicglyph #"accordion.dot"

accClarinet =
  \markup
    \combine
    \musicglyph #"accordion.discant"
    \raise #1.5 \musicglyph #"accordion.dot"

accPiccolo =
  \markup
    \combine
    \musicglyph #"accordion.discant"
    \raise #2.5 \musicglyph #"accordion.dot"