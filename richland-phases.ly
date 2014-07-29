\include "./helmholtz-ellis-v4.ly"

\version "2.16.1"

\header {
  title = "Topology (phases of this difference), Richland"
  composer = "Andrew Christopher Smith"
  tagline = ""
}

violinOne = \new Staff { \new Voice = "violinOneVoice" {
  % Header information
  \override Staff.TimeSignature #'transparent = ##t
  \override Staff.StaffSymbol #'ledger-line-thickness = #'(1 . 0.05)
	\override Score.SpacingSpanner #'strict-note-spacing = ##t
	\override NoteHead #'duration-log = #1
	\override Rest #'transparent = ##t
	
  d1*1/1 ~ d1*5/12 cUf1*5/9 ~ cUf1*25/18 dflatUfUf1*25/48 ~ dflatUfUf1*25/32 gflatUfUf1*25/32 ~ gflatUfUf1*125/128 fdoubleflatUfUfUf1*125/192 |
  d1*1/1 ~ d1*5/14 eflatUfDs'1*10/21 ~ eflatUfDs'1*15/14 gflatUfDs'1*45/112 ~ gflatUfDs'1*135/224 cflatUfDs1*135/224 ~ cflatUfDs1*45/56 dflatUfDs1*15/28 |
  d1*1/1 ~ d1*5/12 cUf1*5/9 ~ cUf1*35/27 dUfUs1*35/72 ~ dUfUs1*35/48 gUfUs1*35/48 ~ gUfUs1*35/36 aUfUs1*35/54 |
  d1*1/1 ~ d1*5/11 bflatUfDe1*20/33 ~ bflatUfDe1*15/11 dflatUfDe1*45/88 ~ dflatUfDe1*135/176 gflatUfDe1*135/176 ~ gflatUfDe1*45/44 aflatUfDe1*15/22 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 c1*9/16 ~ c1*27/32 f1*27/32 ~ f1*9/8 aUs1*21/32 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 c1*9/16 ~ c1*9/10 eDf1*9/10 ~ eDf1*6/5 fsharpDf1*4/5 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 fDe1*9/11 ~ fDe1*27/22 bflatDe1*27/44 ~ bflatDe1*9/11 aDfDe1*36/55 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*2/3 d''1*1/4 ~ d''1*3/8 a''1*1/6 ~ a''1*2/9 b''1*4/27 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 g1*3/4 ~ g1*9/8 eflatDs'1*27/56 ~ eflatDs'1*81/112 eflatDs'1*27/56 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 g1*3/4 ~ g1*9/8 d'1*1/2 ~ d'1*2/3 e'1*4/9 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 g1*3/4 ~ g1*9/8 d'1*1/2 ~ d'1*2/3 e'1*4/9 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 c1*9/16 ~ c1*27/32 c1*9/16 ~ c1*3/4 d'1*1/2 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*22/15 bsharpDfDfUe'1*44/75 ~ bsharpDfDfUe'1*22/25 fdoublesharpDfDfUe'1*88/225 ~ fdoublesharpDfDfUe'1*352/675 gdoublesharpDfDfUe'1*704/2025 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 c1*9/16 ~ c1*27/32 g'1*3/8 ~ g'1*1/2 a'1*1/3 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 c1*9/16 ~ c1*27/32 cflatUfDs'1*135/448 ~ cflatUfDs'1*45/112 dflatUfDs'1*15/56 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 c1*9/16 ~ c1*27/32 g'1*3/8 ~ g'1*1/2 fDs''1*3/14 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 c1*9/16 ~ c1*9/44 gDe'''1*1/11 ~ gDe'''1*4/33 aDe'''1*8/99 |
  d1*1/1 ~ d1*1/2 a1*2/3 ~ a1*3/2 c1*9/16 ~ c1*27/32 g'1*3/8 ~ g'1*1/2 cUf''1*5/36 |
  d1*1/1 ~ d1*3/16 d''1*1/4 ~ d''1*9/16 f''1*27/128 ~ f''1*81/256 c''1*9/64 ~ c''1*3/16 d'''1*1/8 |
  d1*1/1 ~ d1*3/22 gDe''1*2/11 ~ gDe''1*9/22 bflatDe''1*27/176 ~ bflatDe''1*81/352 fDe'''1*9/88 ~ fDe'''1*3/22 gDe'''1*1/11 |
  d1*1/1 ~ d1*5/28 eflatUfDs''1*5/21 ~ eflatUfDs''1*15/28 eflatUfDs'''1*5/42 ~ eflatUfDs'''1*5/28 bflatUfDs'''1*5/63 ~ bflatUfDs'''1*20/189 cUfDs'''1*40/567 |
  d1*1/1 ~ d1*4/25 esharpDfDf''1*16/75 ~ esharpDfDf''1*12/25 asharpDfDfUsDe'1*84/275 ~ asharpDfDfUsDe'1*126/275 esharpDfDfUsDe''1*56/275 ~ esharpDfDfUsDe''1*224/825 fdoublesharpDfDfUsDe''1*448/2475 |
  d1*1/1 ~ d1*5/28 eflatUfDs''1*5/21 ~ eflatUfDs''1*15/28 aDfDs'''1*3/35 ~ aDfDs'''1*9/70 cDfDs''1*81/280 ~ cDfDs''1*27/70 dDfDs''1*9/35 |
  d1*1/1 ~ d1*5/28 eflatUfDs''1*5/21 ~ eflatUfDs''1*15/28 gflatUfDs''1*45/224 ~ gflatUfDs''1*135/448 dflatUfDs''1*15/112 ~ dflatUfDs''1*5/28 fUf1*5/6 |
  d1*1/1 ~ d1*5/28 eflatUfDs''1*5/21 ~ eflatUfDs''1*15/28 gflatUfDs''1*45/224 ~ gflatUfDs''1*135/448 dflatUfDs''1*15/112 ~ dflatUfDs''1*5/28 ddoubleflatUfUfUfDs,1*125/112 |
  d1*1/1 ~ d1*5/28 eflatUfDs''1*5/21 ~ eflatUfDs''1*15/28 gflatUfDs''1*45/224 ~ gflatUfDs''1*9/8 d'1*1/2 ~ d'1*2/3 e'1*4/9 |
  d1*1/1 ~ d1*5/28 eflatUfDs''1*5/21 ~ eflatUfDs''1*6/7 bflatDs'1*9/28 ~ bflatDs'1*27/56 dflatDs1*243/224 ~ dflatDs1*81/56 cdoubleflatUfDsDs''1*405/1568 |
  d1*1/1 ~ d1*5/28 eflatUfDs''1*5/21 ~ eflatUfDs''1*15/28 fDs'''1*3/28 ~ fDs'''1*3/5 csharpDf''1*4/15 ~ csharpDf''1*16/45 dsharpDf''1*32/135 |
} }

violinTwo = \new Staff { \new Voice = "violinTwoVoice" {
  % Header information
  \override Staff.TimeSignature #'transparent = ##t
  \override Staff.StaffSymbol #'ledger-line-thickness = #'(1 . 0.05)
	\override Score.SpacingSpanner #'strict-note-spacing = ##t
	\override NoteHead #'duration-log = #1
	\override Rest #'transparent = ##t

  r1 fUf'1*5/12 ~ fUf'1*5/9 aflatUfUf,1*25/18 ~ aflatUfUf,1*25/48 gflatUfUf1*25/32 ~ gflatUfUf1*25/32 cdoubleflatUfUfUf,1*125/128 ~ cdoubleflatUfUfUf,1*125/192 |
  r1 aflatUfDs'1*5/14 ~ aflatUfDs'1*10/21 dflatUfDs,1*15/14 ~ dflatUfDs,1*45/112 cflatUfDs1*135/224 ~ cflatUfDs1*135/224 gflatUfDs1*45/56 ~ gflatUfDs1*15/28 |
  r1 fUf'1*5/12 ~ fUf'1*5/9 aUfUs,1*35/27 ~ aUfUs,1*35/72 gUfUs1*35/48 ~ gUfUs1*35/48 dUfUs,1*35/36 ~ dUfUs,1*35/54 |
  r1 eflatUfDe'1*5/11 ~ eflatUfDe'1*20/33 aflatUfDe,1*15/11 ~ aflatUfDe,1*45/88 gflatUfDe1*135/176 ~ gflatUfDe1*135/176 dflatUfDe,1*45/44 ~ dflatUfDe,1*15/22 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*9/16 f1*27/32 ~ f1*27/32 c,1*9/8 ~ c,1*21/32 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*9/16 eDf1*9/10 ~ eDf1*9/10 bDf,1*6/5 ~ bDf,1*4/5 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*9/11 bflatDe,1*27/22 ~ bflatDe,1*27/44 fDe1*9/11 ~ fDe1*36/55 |
  r1 d'1*1/2 ~ d'1*2/3 a1*2/3 ~ a1*1/4 g'1*3/8 ~ g'1*1/6 e''1*2/9 ~ e''1*4/27 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*3/4 c,1*9/8 ~ c,1*27/56 aflatDs1*81/112 ~ aflatDs1*27/56 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*3/4 c,1*9/8 ~ c,1*1/2 a1*2/3 ~ a1*4/9 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*3/4 c,1*9/8 ~ c,1*1/2 a1*2/3 ~ a1*4/9 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*9/16 f1*27/32 ~ f1*9/16 g1*3/4 ~ g1*1/2 |
  r1 d'1*1/2 ~ d'1*2/3 gsharpDfUe,1*22/15 ~ gsharpDfUe,1*44/75 esharpDfDfUe1*22/25 ~ esharpDfDfUe1*88/225 cdoublesharpDfDfUe'1*352/675 ~ cdoublesharpDfDfUe'1*704/2025 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*9/16 f1*27/32 ~ f1*3/8 d'1*1/2 ~ d'1*1/3 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*9/16 f1*27/32 ~ f1*135/448 gflatUfDs'1*45/112 ~ gflatUfDs'1*15/56 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*9/16 f1*27/32 ~ f1*3/8 d'1*1/2 ~ d'1*3/14 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*9/16 fDe''1*9/44 ~ fDe''1*1/11 dDe'''1*4/33 ~ dDe'''1*8/99 |
  r1 d'1*1/2 ~ d'1*2/3 g,1*3/2 ~ g,1*9/16 f1*27/32 ~ f1*3/8 d'1*1/2 ~ d'1*5/36 |
  r1 g''1*3/16 ~ g''1*1/4 c1*9/16 ~ c1*27/128 bflat'1*81/256 ~ bflat'1*9/64 g''1*3/16 ~ g''1*1/8 |
  r1 cDe''1*3/22 ~ cDe''1*2/11 fDe'1*9/22 ~ fDe'1*27/176 eflatDe''1*81/352 ~ eflatDe''1*9/88 cDe''1*3/22 ~ cDe''1*1/11 |
  r1 aflatUfDs''1*5/28 ~ aflatUfDs''1*5/21 dflatUfDs1*15/28 ~ dflatUfDs1*5/42 aflatUfDs''1*5/28 ~ aflatUfDs''1*5/63 fUfDs'''1*20/189 ~ fUfDs'''1*40/567 |
  r1 asharpDfDf''1*4/25 ~ asharpDfDf''1*16/75 dsharpDfDf'1*12/25 ~ dsharpDfDf'1*84/275 dsharpDfDfUsDe'1*126/275 ~ dsharpDfDfUsDe'1*56/275 bsharpDfDfUsDe''1*224/825 ~ bsharpDfDfUsDe''1*448/2475 |
  r1 aflatUfDs''1*5/28 ~ aflatUfDs''1*5/21 dflatUfDs1*15/28 ~ dflatUfDs1*3/35 dDfDs'''1*9/70 ~ dDfDs'''1*81/280 gDfDs'1*27/70 ~ gDfDs'1*9/35 |
  r1 aflatUfDs''1*5/28 ~ aflatUfDs''1*5/21 dflatUfDs1*15/28 ~ dflatUfDs1*45/224 cflatUfDs'1*135/448 ~ cflatUfDs'1*15/112 aflatUfDs''1*5/28 ~ aflatUfDs''1*5/6 |
  r1 aflatUfDs''1*5/28 ~ aflatUfDs''1*5/21 dflatUfDs1*15/28 ~ dflatUfDs1*45/224 cflatUfDs'1*135/448 ~ cflatUfDs'1*15/112 aflatUfDs''1*5/28 ~ aflatUfDs''1*125/112 |
  r1 aflatUfDs''1*5/28 ~ aflatUfDs''1*5/21 dflatUfDs1*15/28 ~ dflatUfDs1*45/224 c,1*9/8 ~ c,1*1/2 a1*2/3 ~ a1*4/9 |
  r1 aflatUfDs''1*5/28 ~ aflatUfDs''1*5/21 fDs1*6/7 ~ fDs1*9/28 eflatDs'1*27/56 ~ eflatDs'1*243/224 aflatDs,1*81/56 ~ aflatDs,1*405/1568 |
  r1 aflatUfDs''1*5/28 ~ aflatUfDs''1*5/21 dflatUfDs1*15/28 ~ dflatUfDs1*3/28 bDf1*3/5 ~ bDf1*4/15 gsharpDf'1*16/45 ~ gsharpDf'1*32/135 |
} }

\score {
  \new StaffGroup <<
    \violinOne
    \violinTwo
  >>

  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1 4)
      \override StaffGrouper #'staff-staff-spacing #'minimum-distance = #35
    }
    \context {
      \Voice
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}

\paper {
  ragged-right = ##t
  #(set-paper-size "11x17" 'portrait)
  indent = 0\cm
  #(define fonts
    (make-pango-font-tree "OFL Sorts Mill Goudy"
                          "Nimus Sans"
                          "Luxi Mono"
                          1))
}


