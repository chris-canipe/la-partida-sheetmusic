\version "2.16.2"

#(set-default-paper-size "letter")
#(set-global-staff-size 22)

\include "../lib/accordion_3_reed.ly"

\paper {
  ragged-bottom = ##t
  head-separation = #0
}

\layout {
  %ragged-last = ##t
}

\header {
  title = "La Partida / Quiero ser tu sombra"
  subtitle = "(A Venezuelan Waltz)"
  arranger = "Arr. by P. Giacalone and C. Canipe"
  composer = "Antonio Lauro"
  meter = "Waltz Tempo"
}

% Y/N indicate bass indicator

bmY = {
  b,4 b^"m" b
}
bmN = {
  b,4 b b
}
bmAltN = {
  fis,4 b b
}
bSevenY = {
  b,4 b^"7" b
}
bSevenAltN = {
  fis,4 b b
}
fisSevenAltY = {
  cis4 fis^"7" fis
}
fisSevenAltN = {
  cis4 fis fis
}
fisSevenN = {
  fis,4 fis fis
}
fisSevenY = {
  fis,4 fis^"7" fis
}
emY = {
  e,4 e^"m" e
}
emAltN = {
  b,4 e e
}

\new GrandStaff
<<

  \override Score.VoltaBracket #'minimum-space = #7

  \relative c'
  \new Staff {

    \override Score.BarNumber #'padding = #3
    \override Score.BarNumber #'break-visibility = #end-of-line-invisible

    \key d \major
    \clef treble

    \time 3/4

    \repeat volta 2 {

      \partial 8*5 fis8-2 \p ^\accBandoneon ( g-3 _\markup { \italic "poco rubato" } fis f-1 fis
      d'4.-5 ) \< fis,8-1 ( d' fis,
      d'4. ) fis,8 ( d' fis,
      d'4 \! cis8 \> c cis4 ~

      \break

      cis4 ) \! \times 2/3 { e,8-1 ( [  \once \override Fingering #'extra-offset = #'(0 . 1) fis-2 e-1 ]  } dis-2 e-1
      cis'4.-5 ) \< e,8 ( cis' e,
      cis'4. ) e,8 ( cis' e,
      cis'4-5 \! b8-4 \> ais-3 b4-4 ~

      \break

      b4 ) \! \noBeam \times 2/3 { fis8-2 ( [ g-3 fis-2 ] } f-1 fis-2
      b4.-4 ) \< ais8-3 ( b-4 c-5
      b4.-4 ) \! a8-3 \> ( g-1 fis-2 )
      fis16-2 ( g16-3 fis8 e-1 dis-2 e4-1 ~

      \break

      e8 ) \! \noBeam g-4 ( fis-3 e-2 d-1 cis-2
      b8-1 ais-2 b-1 cis-2 d-1 e-2
      fis8-3 g-4 fis-3 e-2 d-1 cis-2
      \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible

      \mark \markup { \musicglyph #"scripts.coda" }

      \break
    }
	
    \alternative {
      {
        b8-1 ) \noBeam cis16-3 \< ( b-1 ais8-2 b-1 d-2 fis-3 
        \partial 8
        b8-5 ) \!
      }
      {
        b,8-1 _\markup { \italic "rit." } b d-2 \> d fis-3 fis \!
        b4-5 \p r
      }
    }

    \bar "||"
    fis
    fis'8-5 ( e-4 fis,-1 fis' e fis,
    fis'8 _\markup { \italic "cresc. sempre" } e fis, fis' e fis, )

    \break

    e'8-4 ( d-3 fis,-1 e' d fis,
    e'8 d fis, e' d fis, )
    d'8-3 ( cis-2 fis,-1 d' cis fis,
    d'8 cis fis, d' cis fis, )

    \break

    cis'8-3 ( b-2 fis-1 cis' b fis
    cis'8 b fis cis' b fis )
    b8-3 ( \> a-2 fis-1 b a fis
    b8 a fis b a fis \! )

    \break

    fis16 g16 fis8 e dis e4 ~
    e8 \noBeam g-4 ( fis-3 e-2 d-1 cis-2
    b8-1 ais-2 b-1 cis-2 d-1 e-2
    fis8-3 g-4 fis-3 e-2 d-1 cis-2

    %\break

    \once \override TextScript #'padding = #4
    b4-1 \< _\markup { \italic "rit." } d-2
    fis-3 \! ~
    \once \override Score.RehearsalMark #'self-alignment-X = #center
    \mark \markup { "D.C. al Coda " \musicglyph #"scripts.coda" }
    \partial 8
    \textLengthOn fis8 ) 
    _\markup { \italic "dim." }
    \fermata

    \bar "||"
    \break
    
    \once \override Score.RehearsalMark #'padding = #2
    \mark \markup { \musicglyph #"scripts.coda" "Coda" }
    b,8-1 \repeatTie \noBeam cis16-3 ( b-1 ais8-2 ) b-. d-. fis-. b-.
    cis16-3 ( b-1 ais8-2 ) b-. d-. fis-. b4-. r4 <ais, cis e fis>4->
    <b d fis>4-> r4 r
    \bar "|."
  }

  \new Staff {

    \key d \major
    \clef bass

    \time 3/4

    \partial 8*5 r8 r2
    \bmY
    \bmAltN
    \fisSevenAltY

    \fisSevenN
    \fisSevenAltN
    \fisSevenN
    \bmY

    \bmAltN
    \bSevenY
    \bSevenAltN
    \emY

    \emAltN
    \bmY
    \fisSevenY

    %1
    \bmY
    b,8

    %2
    \bmY
    <b b,>4 r r
    \fisSevenY
    \fisSevenAltN
    
    \bmY
    \bmAltN
    \fisSevenAltY
    \fisSevenN

    \bmY
    \bmAltN
    \bSevenY
    \bSevenAltN

    \emY
    \emAltN
    \bmY
    \fisSevenY
    
    b,4  b^"m" <fis, fis>4^"7" ~
    <fis, fis>8 \fermata

    %3
    \bmY
    b,8 r8 fis,4-2 d,-5
    b,4 r fis,4
    b, r r
  }
>>