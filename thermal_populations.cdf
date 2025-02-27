(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     43620,       1150]
NotebookOptionsPosition[     43636,       1127]
NotebookOutlinePosition[     44087,       1147]
CellTagsIndexPosition[     44044,       1144]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 StyleBox["Thermal Populations of Quantized Energy Levels\n",
  FontColor->GrayLevel[0]],
 StyleBox["Sydney Sipes-Hayse and Rob Berger, Department of Chemistry, \
Western Washington University\nRevised December 2019",
  FontSize->18,
  FontColor->GrayLevel[0]]
}], "Title"],

Cell[CellGroupData[{

Cell[TextData[{
 "What do we expect?",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "This lesson aims to strengthen our intuition about partition functions and \
the temperature-dependent populations of quantized energy levels. Recall that \
a state in which a system has energy \[CurlyEpsilon] at temperature ",
 StyleBox["T",
  FontSlant->"Italic"],
 " corresponds to a ",
 StyleBox["Boltzmann factor",
  FontWeight->"Bold"],
 " of ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["e", 
    RowBox[{
     RowBox[{"-", "\[CurlyEpsilon]"}], "/", 
     StyleBox["kT",
      FontSlant->"Italic"]}]], TraditionalForm]],
  ExpressionUUID -> "c519fd19-faa1-49e6-925c-16cb24993289"],
 ", where ",
 StyleBox["k",
  FontSlant->"Italic"],
 " is the Boltzmann constant. The ",
 StyleBox["partition function",
  FontWeight->"Bold"],
 " (",
 StyleBox["q",
  FontSlant->"Italic"],
 " for one particle, ",
 StyleBox["Q",
  FontSlant->"Italic"],
 " for multiple particles) is the sum of Boltzmann factors for all possible \
states. The probability of finding a system in a given state is equal to the \
Boltzmann factor divided by the partition function.\n\nThe possible states of \
a multi-particle system are counted differently depending on what types of \
particles they are. If the particles are ",
 StyleBox["distinguishable",
  FontWeight->"Bold"],
 " (e.g., atoms in a crystal), permutations of the particles count as \
different states. If the particles are ",
 StyleBox["indistinguishable",
  FontWeight->"Bold"],
 " (e.g., atoms in a gas), they do not. There are two types of \
indistinguishable particles: ",
 StyleBox["fermions",
  FontWeight->"Bold"],
 " (e.g., electrons) and ",
 StyleBox["bosons",
  FontWeight->"Bold"],
 " (e.g., deuterium nuclei). Fermions cannot occupy the same single-particle \
state as each other, while bosons can.\n\nWith those technical reminders out \
of the way, consider a system in which each individual particle can occupy \
one of two states: ground state ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "0"], TraditionalForm]]],
 " or excited state ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "1"], TraditionalForm]]],
 ".\n\n",
 StyleBox["Question 1.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" If there is ",
  FontColor->GrayLevel[0]],
 StyleBox["one particle",
  FontVariations->{"Underline"->True},
  FontColor->GrayLevel[0]],
 StyleBox[" in this system, fill in the following table with the \
probabilities that the particle will occupy ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "0"], TraditionalForm]]],
 " or ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "1"], TraditionalForm]]],
 StyleBox[" at very low temperature (approaching absolute zero) or very high \
temperature (",
  FontColor->GrayLevel[0]],
 "approaching infinity",
 StyleBox[").\n\n",
  FontColor->GrayLevel[0]],
 Cell[BoxData[GridBox[{
    {
     StyleBox[" ", "Text"], 
     StyleBox[
      RowBox[{"Low", " ", "Temperature"}], "Text"], 
     StyleBox[
      RowBox[{"High", " ", "Temperature"}], "Text"]},
    {
     StyleBox[
      FormBox[
       RowBox[{"Particle", " ", "in", " ", 
        SubscriptBox["\[CurlyEpsilon]", "0"]}],
       TraditionalForm], "Text"], 
     StyleBox[" ", "Text"], 
     StyleBox[" ", "Text"]},
    {
     StyleBox[
      RowBox[{"Particle", " ", "in", " ", 
       SubscriptBox["\[CurlyEpsilon]", "1"]}], "Text"], 
     StyleBox[" ", "Text"], 
     StyleBox[" ", "Text"]}
   },
   GridBoxDividers->{
    "Columns" -> {{True}}, "ColumnsIndexed" -> {}, "Rows" -> {{True}}, 
     "RowsIndexed" -> {}}]]],
 "\n\n",
 StyleBox["Question 1.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Next, consider the situation in which there are ",
  FontColor->GrayLevel[0]],
 StyleBox["two distinguishable particles",
  FontVariations->{"Underline"->True},
  FontColor->GrayLevel[0]],
 StyleBox[" in energy levels ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "0"], TraditionalForm]]],
 " and/or ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "1"], TraditionalForm]]],
 StyleBox[". Fill in the following table with the appropriate probabilities.\n\
\n",
  FontColor->GrayLevel[0]],
 Cell[BoxData[GridBox[{
    {" ", 
     StyleBox[
      RowBox[{"Low", " ", "Temperature"}], "Text"], 
     StyleBox[
      RowBox[{"High", " ", "Temperature"}], "Text"]},
    {
     StyleBox[
      RowBox[{"Both", " ", "in", " ", 
       StyleBox[
        SubscriptBox["\[CurlyEpsilon]", "0"], "Text"]}], "Text"], " ", " "},
    {
     StyleBox[
      RowBox[{"One", " ", "in", " ", "each", " ", "level"}], "Text"], " ", 
     " "},
    {
     StyleBox[
      RowBox[{"Both", " ", "in", " ", 
       StyleBox[
        SubscriptBox["\[CurlyEpsilon]", "1"], "Text"]}], "Text"], " ", " "}
   },
   GridBoxDividers->{
    "Columns" -> {{True}}, "ColumnsIndexed" -> {}, "Rows" -> {{True}}, 
     "RowsIndexed" -> {}}]]],
 "\n\n",
 StyleBox["Question 1.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Next, consider the situation in which there are ",
  FontColor->GrayLevel[0]],
 StyleBox["two indistinguishable fermions",
  FontVariations->{"Underline"->True},
  FontColor->GrayLevel[0]],
 StyleBox[" in energy levels ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "0"], TraditionalForm]]],
 " and/or ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "1"], TraditionalForm]]],
 StyleBox[". Fill in the following table with the appropriate probabilities.\n\
\n",
  FontColor->GrayLevel[0]],
 Cell[BoxData[GridBox[{
    {" ", 
     StyleBox[
      RowBox[{"Low", " ", "Temperature"}], "Text"], 
     StyleBox[
      RowBox[{"High", " ", "Temperature"}], "Text"]},
    {
     StyleBox[
      RowBox[{"Both", " ", "in", " ", 
       StyleBox[
        SubscriptBox["\[CurlyEpsilon]", "0"], "Text"]}], "Text"], " ", " "},
    {
     StyleBox[
      RowBox[{"One", " ", "in", " ", "each", " ", "level"}], "Text"], " ", 
     " "},
    {
     StyleBox[
      RowBox[{"Both", " ", "in", " ", 
       StyleBox[
        SubscriptBox["\[CurlyEpsilon]", "1"], "Text"]}], "Text"], " ", " "}
   },
   GridBoxDividers->{
    "Columns" -> {{True}}, "ColumnsIndexed" -> {}, "Rows" -> {{True}}, 
     "RowsIndexed" -> {}}]]],
 "\n\n",
 StyleBox["Question 1.4:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Finally, consider the situation in which there are ",
  FontColor->GrayLevel[0]],
 StyleBox["two indistinguishable bosons",
  FontVariations->{"Underline"->True},
  FontColor->GrayLevel[0]],
 StyleBox[" in energy levels ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "0"], TraditionalForm]]],
 " and/or ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyEpsilon]", "1"], TraditionalForm]]],
 StyleBox[". Fill in the following table with the appropriate probabilities.\n\
\n",
  FontColor->GrayLevel[0]],
 Cell[BoxData[GridBox[{
    {" ", 
     StyleBox[
      RowBox[{"Low", " ", "Temperature"}], "Text"], 
     StyleBox[
      RowBox[{"High", " ", "Temperature"}], "Text"]},
    {
     StyleBox[
      RowBox[{"Both", " ", "in", " ", 
       StyleBox[
        SubscriptBox["\[CurlyEpsilon]", "0"], "Text"]}], "Text"], " ", " "},
    {
     StyleBox[
      RowBox[{"One", " ", "in", " ", "each", " ", "level"}], "Text"], " ", 
     " "},
    {
     StyleBox[
      RowBox[{"Both", " ", "in", " ", 
       StyleBox[
        SubscriptBox["\[CurlyEpsilon]", "1"], "Text"]}], "Text"], " ", " "}
   },
   GridBoxDividers->{
    "Columns" -> {{True}}, "ColumnsIndexed" -> {}, "Rows" -> {{True}}, 
     "RowsIndexed" -> {}}]]]
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "One particle in three energy levels",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "In the simulation below, one particle can occupy one of three energy \
states: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["E", "0"], "=", "0"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["E", "1"], TraditionalForm]]],
 ", or ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["E", "2"], TraditionalForm]]],
 ". The scroll bars allow you to adjust the temperature and the spacing \
between the energy states. The probability that the particle will occupy each \
of the three energy states is plotted, along with the partition function ",
 Cell[BoxData[
  FormBox[
   RowBox[{"q", "=", 
    RowBox[{
     SuperscriptBox["e", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["E", "0"]}], "/", 
       StyleBox["kT",
        FontSlant->"Italic"]}]], "+", 
     SuperscriptBox["e", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["E", "1"]}], "/", 
       StyleBox["kT",
        FontSlant->"Italic"]}]], "+", 
     SuperscriptBox["e", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["E", "2"]}], "/", 
       StyleBox["kT",
        FontSlant->"Italic"]}]]}]}], TraditionalForm]],
  ExpressionUUID -> "c519fd19-faa1-49e6-925c-16cb24993289"],
 ". Take some time to explore the simulation, and then answer the questions \
below it.\n"
}], "Text"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`T$$ = 5, $CellContext`\[CapitalDelta]E$$ = 
    0.02, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`T$$], 5, 1200, 5}, {
      Hold[$CellContext`\[CapitalDelta]E$$], 0.02, 0.2, 0.001}}, 
    Typeset`size$$ = {400., {236., 240.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`T$222746$$ = 
    0, $CellContext`\[CapitalDelta]E$222747$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`T$$ = 5, $CellContext`\[CapitalDelta]E$$ = 
        0.02}, "ControllerVariables" :> {
        Hold[$CellContext`T$$, $CellContext`T$222746$$, 0], 
        Hold[$CellContext`\[CapitalDelta]E$$, \
$CellContext`\[CapitalDelta]E$222747$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`simVis[$CellContext`T$$, $CellContext`\
\[CapitalDelta]E$$], 
      "Specifications" :> {{$CellContext`T$$, 5, 1200, 
         5}, {$CellContext`\[CapitalDelta]E$$, 0.02, 0.2, 0.001}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{445., {294., 299.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`simVis[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Show[
         $CellContext`Esub0[$CellContext`\[CapitalDelta]E], 
         $CellContext`Esub1[$CellContext`\[CapitalDelta]E], 
         $CellContext`Esub2[$CellContext`\[CapitalDelta]E], 
         $CellContext`P0R[$CellContext`T, $CellContext`\[CapitalDelta]E], 
         $CellContext`P1R[$CellContext`T, $CellContext`\[CapitalDelta]E], 
         $CellContext`P2R[$CellContext`T, $CellContext`\[CapitalDelta]E], \
$CellContext`Etitle, 
         $CellContext`Pf[$CellContext`T, $CellContext`\[CapitalDelta]E], 
         $CellContext`PT[$CellContext`T], 
         $CellContext`PE[$CellContext`\[CapitalDelta]E], 
         PlotRange -> {{-1.6, 5.8}, {-1.3, 7.5}}, Axes -> False, ImageSize -> 
         400], $CellContext`Esub0[
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Graphics[{
          Thickness[0.008], 
          Line[{{-0.3, 0}, {0.8, 0}}], 
          Text[
           Style[
            Subscript["\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 0],
             FontSize -> 18], {1.3, 0}]}, Axes -> False], 
       Attributes[Subscript] = {NHoldRest}, $CellContext`Esub1[
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Graphics[{
          Thickness[0.008], 
          
          Line[{{-0.3, 15 $CellContext`\[CapitalDelta]E}, {
            0.8, 15 $CellContext`\[CapitalDelta]E}}], 
          Text[
           Style[
            Subscript["\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 1],
             FontSize -> 18], {1.3, 15 $CellContext`\[CapitalDelta]E}]}, Axes -> 
         False], $CellContext`Esub2[
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Graphics[{
          Thickness[0.008], 
          
          Line[{{-0.3, 30 $CellContext`\[CapitalDelta]E}, {
            0.8, 30 $CellContext`\[CapitalDelta]E}}], 
          Text[
           Style[
            Subscript["\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 2],
             FontSize -> 18], {1.3, 30 $CellContext`\[CapitalDelta]E}]}, Axes -> 
         False], $CellContext`P0R[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Graphics[{{Red, 
           Rectangle[{2.2, -0.15}, {
            2.2 + 2. $CellContext`P0[$CellContext`T, $CellContext`\
\[CapitalDelta]E], 0.15}]}, 
          Inset[
           Style[
            $CellContext`a[$CellContext`T, $CellContext`\[CapitalDelta]E], 
            15], {3. + 
            2. $CellContext`P0[$CellContext`T, $CellContext`\[CapitalDelta]E],
             0}], 
          Inset[
           Style["%", 15], {
           3.5 + 2. $CellContext`P0[$CellContext`T, $CellContext`\
\[CapitalDelta]E], 0}]}, Axes -> False], $CellContext`P0[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := 
       1/(E^($CellContext`E0[$CellContext`\[CapitalDelta]E]/($CellContext`k \
$CellContext`T)) $CellContext`q[$CellContext`T, \
$CellContext`\[CapitalDelta]E]), $CellContext`E0[
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := 0 $CellContext`\[CapitalDelta]E, $CellContext`k = 
       1.38*^-23, $CellContext`q[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`Esp, 
          Blank[]]] := 
       E^(-($CellContext`E0[$CellContext`Esp]/($CellContext`k \
$CellContext`T))) + 
        E^(-($CellContext`E1[$CellContext`Esp]/($CellContext`k \
$CellContext`T))) + 
        E^(-($CellContext`E2[$CellContext`Esp]/($CellContext`k \
$CellContext`T))), $CellContext`E1[
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := $CellContext`\[CapitalDelta]E/
        100000000000000000000, $CellContext`E2[
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := (2 $CellContext`\[CapitalDelta]E)/
        100000000000000000000, $CellContext`a[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := AccountingForm[
         N[$CellContext`P0[$CellContext`T, $CellContext`\[CapitalDelta]E] 
          100], {3, 2}], $CellContext`P1R[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Graphics[{{Red, 
           
           Rectangle[{2.2, 15 $CellContext`\[CapitalDelta]E - 0.15}, {
            2.2 + 2. $CellContext`P1[$CellContext`T, $CellContext`\
\[CapitalDelta]E], 15 $CellContext`\[CapitalDelta]E + 0.15}]}, 
          Inset[
           Style[
            $CellContext`b[$CellContext`T, $CellContext`\[CapitalDelta]E], 
            15], {3. + 
            2. $CellContext`P0[$CellContext`T, $CellContext`\[CapitalDelta]E],
             15 $CellContext`\[CapitalDelta]E}], 
          Inset[
           Style["%", 15], {
           3.5 + 2. $CellContext`P0[$CellContext`T, $CellContext`\
\[CapitalDelta]E], 15 $CellContext`\[CapitalDelta]E}]}, Axes -> 
         False], $CellContext`P1[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := 
       1/(E^($CellContext`E1[$CellContext`\[CapitalDelta]E]/($CellContext`k \
$CellContext`T)) $CellContext`q[$CellContext`T, \
$CellContext`\[CapitalDelta]E]), $CellContext`b[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := AccountingForm[
         N[$CellContext`P1[$CellContext`T, $CellContext`\[CapitalDelta]E] 
          100], {3, 2}], $CellContext`P2R[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Graphics[{{Red, 
           
           Rectangle[{2.2, 30 $CellContext`\[CapitalDelta]E - 0.15}, {
            2.2 + 2. $CellContext`P2[$CellContext`T, $CellContext`\
\[CapitalDelta]E], 30 $CellContext`\[CapitalDelta]E + 0.15}]}, 
          Inset[
           Style[
            $CellContext`c[$CellContext`T, $CellContext`\[CapitalDelta]E], 
            15], {3. + 
            2. $CellContext`P0[$CellContext`T, $CellContext`\[CapitalDelta]E],
             30 $CellContext`\[CapitalDelta]E}], 
          Inset[
           Style["%", 15], {
           3.5 + 2. $CellContext`P0[$CellContext`T, $CellContext`\
\[CapitalDelta]E], 30 $CellContext`\[CapitalDelta]E}]}, Axes -> 
         False], $CellContext`P2[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := 
       1/(E^($CellContext`E2[$CellContext`\[CapitalDelta]E]/($CellContext`k \
$CellContext`T)) $CellContext`q[$CellContext`T, \
$CellContext`\[CapitalDelta]E]), $CellContext`c[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := AccountingForm[
         N[$CellContext`P2[$CellContext`T, $CellContext`\[CapitalDelta]E] 
          100], {3, 2}], $CellContext`Etitle = Graphics[{
          Thickness[0.007], 
          Arrowheads[0.06], 
          Arrow[{{-0.97, -0.5}, {-0.97, 6.5}}], {
           Text[
            Style[$CellContext`Energy, 20], {-1.3, 2.8}, Automatic, {0, 1}]}},
          Axes -> False], $CellContext`Pf[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Graphics[{
          Inset[
           Style[
            StringForm[
            "\!\(\*\nStyleBox[\"q\",\nFontSlant->\"Italic\"]\) = ``", 
             $CellContext`bigq[$CellContext`T, \
$CellContext`\[CapitalDelta]E]], Large], {1., -1.}, {
           Left, Center}]}], $CellContext`bigq[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := 
       E^(-($CellContext`E0[$CellContext`\[CapitalDelta]E]/($CellContext`k \
$CellContext`T))) + 
        E^(-($CellContext`E1[$CellContext`\[CapitalDelta]E]/($CellContext`k \
$CellContext`T))) + 
        E^(-($CellContext`E2[$CellContext`\[CapitalDelta]E]/($CellContext`k \
$CellContext`T))), $CellContext`PT[
         Pattern[$CellContext`T, 
          Blank[]], 
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Graphics[{
          Inset[
           Style[
           "\!\(\*\nStyleBox[\"T\",\nFontSlant->\"Italic\"]\) =", Large], {
           1.3, 2.}], 
          Inset[
           Style[$CellContext`T, Large], {2.45, 2.}]}], $CellContext`PT[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{
          Inset[
           Style[
            StringForm[
            "\!\(\*\nStyleBox[\"T\",\nFontSlant->\"Italic\"]\) = `` K", \
$CellContext`T], Large], {-1.2, 7.1}, {Left, Center}]}], $CellContext`PE[
         Pattern[$CellContext`\[CapitalDelta]E, 
          Blank[]]] := Graphics[{
          Inset[
           Style[
            StringForm[
            "\[CapitalDelta]\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\) \
= `` J", $CellContext`\[CapitalDelta]E/100000000000000000000], Large], {1.8, 
           7.1}, {Left, Center}]}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"],

Cell[TextData[{
 StyleBox["Question 2.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" By adjusting the temperature scroll bar, observe how the \
occupation probabilities change in the low- and high-temperature limits. Do \
these probabilities seem to align with your answer to Question 1.1? If not, \
then go back and reconsider your answer to Question 1.1.",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 2.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" By adjusting both scroll bars, find the conditions that minimize \
and the conditions that maximize the partition function ",
  FontColor->GrayLevel[0]],
 StyleBox["q",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox[". What are the minimum and maximum values of ",
  FontColor->GrayLevel[0]],
 StyleBox["q",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox["? Referring to the formula for ",
  FontColor->GrayLevel[0]],
 StyleBox["q",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox[", rationalize these minimum and maximum values.",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 2.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" As you may have seen in quantum mechanics and/or spectroscopy, \
the energy spacing of vibrational levels (in the infrared region) is \
typically farther apart than the spacing of rotational levels (in the \
microwave region). At room temperature, which do you expect to have a higher \
probability of being occupied: vibrational excited states or rotational \
excited states? We will soon see how this plays out for diatomic molecules.",
  FontColor->GrayLevel[0]]
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Two particles in three energy levels",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "In the simulation below, two particles can each occupy one of three energy \
states: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["E", "0"], "=", "0"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["E", "1"], TraditionalForm]]],
 ", or ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["E", "2"], TraditionalForm]]],
 ". The scroll bar allows you to adjust the temperature (for simplicity, the \
energy spacing is fixed this time). For distinguishable particles, \
indistinguishable fermions, and indistinguishable bosons, the probability of \
each macrostate is plotted, along with the partition function ",
 StyleBox["Q",
  FontSlant->"Italic"],
 ". Take some time to explore the simulation, and then answer the questions \
below it.\n"
}], "Text"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`T$$ = 70, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`T$$], 70, 16000, 10}}, Typeset`size$$ = {
    690., {233., 237.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`T$47815$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`T$$ = 70}, 
      "ControllerVariables" :> {
        Hold[$CellContext`T$$, $CellContext`T$47815$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`testplot[$CellContext`T$$], 
      "Specifications" :> {{$CellContext`T$$, 70, 16000, 10}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{735., {277., 282.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`testplot[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       Show[$CellContext`Elvl0, $CellContext`Elvl1, $CellContext`Elvl2, 
         $CellContext`disRec1[$CellContext`T], 
         $CellContext`disRec2[$CellContext`T], 
         $CellContext`disRec3[$CellContext`T], 
         $CellContext`disRec4[$CellContext`T], 
         $CellContext`disRec5[$CellContext`T], 
         $CellContext`disRec6[$CellContext`T], $CellContext`distLabel, \
$CellContext`fermLabel, 
         $CellContext`fermRec1[$CellContext`T], 
         $CellContext`fermRec2[$CellContext`T], 
         $CellContext`fermRec3[$CellContext`T], $CellContext`bosLabel, 
         $CellContext`bosRec1[$CellContext`T], 
         $CellContext`bosRec2[$CellContext`T], 
         $CellContext`bosRec3[$CellContext`T], 
         $CellContext`bosRec4[$CellContext`T], 
         $CellContext`bosRec5[$CellContext`T], 
         $CellContext`bosRec6[$CellContext`T], $CellContext`red, \
$CellContext`blue, $CellContext`purple, $CellContext`green, \
$CellContext`orange, $CellContext`black, $CellContext`Earrow, \
$CellContext`legendTitle, $CellContext`disLower, $CellContext`disUpper, \
$CellContext`fermLower, $CellContext`fermUpper, $CellContext`bosLower, \
$CellContext`bosUpper, $CellContext`legendBox, 
         $CellContext`disPf[$CellContext`T], 
         $CellContext`ferPf[$CellContext`T], 
         $CellContext`bosPf[$CellContext`T], 
         PlotRange -> {{-1, 22.5}, {-1.5, 14.5}}, ImageSize -> 
         690], $CellContext`Elvl0 = Graphics[{
          Thickness[0.004], 
          Line[{{2.4, 8.4}, {4, 8.4}}], 
          Text[
           Style[
            Subscript["\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 0],
             FontSize -> 18], {4.8, 8.4}]}], 
       Attributes[Subscript] = {NHoldRest}, $CellContext`Elvl1 = Graphics[{
          Thickness[0.004], 
          Line[{{2.4, 10.4}, {4, 10.4}}], 
          Text[
           Style[
            Subscript["\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 1],
             FontSize -> 18], {4.8, 10.4}]}], $CellContext`Elvl2 = Graphics[{
          Thickness[0.004], 
          Line[{{2.4, 12.4}, {4, 12.4}}], 
          Text[
           Style[
            Subscript["\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 2],
             FontSize -> 18], {4.8, 12.4}]}], $CellContext`disRec1[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Red, 
          
          Rectangle[{15, 10}, {
           16, 10 + 
            4 $CellContext`disE0E0[$CellContext`T]}]}], $CellContext`disE0E0[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(2 ($CellContext`EZero/($CellContext`BC $CellContext`T))) \
$CellContext`disQ[$CellContext`T]), $CellContext`EZero = 0, $CellContext`BC = 
       1.38*^-23, $CellContext`disQ[
         Pattern[$CellContext`T, 
          Blank[]]] := (
         E^(-($CellContext`EZero/($CellContext`BC $CellContext`T))) + 
         E^(-($CellContext`EOne/($CellContext`BC $CellContext`T))) + 
         E^(-($CellContext`ETwo/($CellContext`BC $CellContext`T))))^2, \
$CellContext`EOne = 1/100000000000000000000, $CellContext`ETwo = 
       1/50000000000000000000, $CellContext`disRec2[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Blue, 
          
          Rectangle[{18, 10}, {
           19, 10 + 
            4 $CellContext`disE0E1[$CellContext`T]}]}], $CellContext`disE0E1[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       2 ((E^(($CellContext`EZero + $CellContext`EOne)/($CellContext`BC \
$CellContext`T)))^(-1)/$CellContext`disQ[$CellContext`T]), \
$CellContext`disRec3[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Purple, 
          
          Rectangle[{19, 10}, {
           20, 10 + 
            4 $CellContext`disE0E2[$CellContext`T]}]}], $CellContext`disE0E2[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       2 ((E^(($CellContext`EZero + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T)))^(-1)/$CellContext`disQ[$CellContext`T]), \
$CellContext`disRec4[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Green, 
          
          Rectangle[{16, 10}, {
           17, 10 + 
            4 $CellContext`disE1E1[$CellContext`T]}]}], $CellContext`disE1E1[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(2 ($CellContext`EOne/($CellContext`BC $CellContext`T))) \
$CellContext`disQ[$CellContext`T]), $CellContext`disRec5[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Orange, 
          
          Rectangle[{20, 10}, {
           21, 10 + 
            4 $CellContext`disE1E2[$CellContext`T]}]}], $CellContext`disE1E2[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       2 ((E^(($CellContext`EOne + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T)))^(-1)/$CellContext`disQ[$CellContext`T]), \
$CellContext`disRec6[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[
         Rectangle[{17, 10}, {
          18, 10 + 
           4 $CellContext`disE2E2[$CellContext`T]}]], $CellContext`disE2E2[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(2 ($CellContext`ETwo/($CellContext`BC $CellContext`T))) \
$CellContext`disQ[$CellContext`T]), $CellContext`distLabel = Graphics[
         Text[
          Style[$CellContext`Distinguishable, Large], {10.8, 
          12.8}]], $CellContext`fermLabel = Graphics[
         Text[
          Style["Fermions", Large], {10.8, 7.3}]], $CellContext`fermRec1[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Blue, 
          
          Rectangle[{18, 4.5}, {
           19, 4.5 + 
            4 $CellContext`ferE0E1[$CellContext`T]}]}], $CellContext`ferE0E1[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(($CellContext`EZero + $CellContext`EOne)/($CellContext`BC \
$CellContext`T)) $CellContext`ferQ[$CellContext`T]), $CellContext`ferQ[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       E^(-(($CellContext`EZero + $CellContext`EOne)/($CellContext`BC \
$CellContext`T))) + 
        E^(-(($CellContext`EZero + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T))) + 
        E^(-(($CellContext`EOne + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T))), $CellContext`fermRec2[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Purple, 
          
          Rectangle[{19, 4.5}, {
           20, 4.5 + 
            4 $CellContext`ferE0E2[$CellContext`T]}]}], $CellContext`ferE0E2[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(($CellContext`EZero + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T)) $CellContext`ferQ[$CellContext`T]), $CellContext`fermRec3[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Orange, 
          
          Rectangle[{20, 4.5}, {
           21, 4.5 + 
            4 $CellContext`ferE1E2[$CellContext`T]}]}], $CellContext`ferE1E2[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(($CellContext`EOne + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T)) $CellContext`ferQ[$CellContext`T]), $CellContext`bosLabel = 
       Graphics[
         Text[
          Style["Bosons", Large], {10.8, 2.}]], $CellContext`bosRec1[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Red, 
          
          Rectangle[{15, -0.8}, {
           16, -0.8 + 
            4 $CellContext`bosE0[$CellContext`T]}]}], $CellContext`bosE0[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(2 ($CellContext`EZero/($CellContext`BC $CellContext`T))) \
$CellContext`bosQ[$CellContext`T]), $CellContext`bosQ[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       E^(-((2 $CellContext`EZero)/($CellContext`BC $CellContext`T))) + 
        E^(-((2 $CellContext`EOne)/($CellContext`BC $CellContext`T))) + 
        E^(-((2 $CellContext`ETwo)/($CellContext`BC $CellContext`T))) + 
        E^(-(($CellContext`EZero + $CellContext`EOne)/($CellContext`BC \
$CellContext`T))) + 
        E^(-(($CellContext`EZero + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T))) + 
        E^(-(($CellContext`EOne + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T))), $CellContext`bosRec2[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Blue, 
          
          Rectangle[{18, -0.8}, {
           19, -0.8 + 
            4 $CellContext`bosE0E1[$CellContext`T]}]}], $CellContext`bosE0E1[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(($CellContext`EZero + $CellContext`EOne)/($CellContext`BC \
$CellContext`T)) $CellContext`bosQ[$CellContext`T]), $CellContext`bosRec3[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Purple, 
          
          Rectangle[{19, -0.8}, {
           20, -0.8 + 
            4 $CellContext`bosE0E2[$CellContext`T]}]}], $CellContext`bosE0E2[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(($CellContext`EZero + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T)) $CellContext`bosQ[$CellContext`T]), $CellContext`bosRec4[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Green, 
          
          Rectangle[{16, -0.8}, {
           17, -0.8 + 
            4 $CellContext`bosE1[$CellContext`T]}]}], $CellContext`bosE1[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(2 ($CellContext`EOne/($CellContext`BC $CellContext`T))) \
$CellContext`bosQ[$CellContext`T]), $CellContext`bosRec5[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{Orange, 
          
          Rectangle[{20, -0.8}, {
           21, -0.8 + 
            4 $CellContext`bosE1E2[$CellContext`T]}]}], $CellContext`bosE1E2[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(($CellContext`EOne + $CellContext`ETwo)/($CellContext`BC \
$CellContext`T)) $CellContext`bosQ[$CellContext`T]), $CellContext`bosRec6[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[
         Rectangle[{17, -0.8}, {
          18, -0.8 + 
           4 $CellContext`bosE2[$CellContext`T]}]], $CellContext`bosE2[
         Pattern[$CellContext`T, 
          Blank[]]] := 
       1/(E^(2 ($CellContext`ETwo/($CellContext`BC $CellContext`T))) \
$CellContext`bosQ[$CellContext`T]), $CellContext`red = Graphics[{
          RGBColor[1, 0, 0], 
          Thickness[0.004], 
          Line[{{0.3, 2.5}, {0.8, 2.5}}], 
          Text[
           Style[
            StringForm["Both in ``", 
             Subscript[
             "\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 0]], 
            RGBColor[1, 0, 0], 14], {2.1, 2.5}]}], $CellContext`blue = 
       Graphics[{
          RGBColor[0, 0, 1], 
          Thickness[0.004], 
          Line[{{3.9, 2.5}, {4.4, 2.5}}], 
          Text[
           Style[
            StringForm["``, ``", 
             Subscript[
             "\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 0], 
             Subscript[
             "\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 1]], 
            RGBColor[0, 0, 1], 14], {5.35, 2.5}]}], $CellContext`purple = 
       Graphics[{
          RGBColor[0.5, 0, 0.5], 
          Thickness[0.004], 
          Line[{{3.9, 1.75}, {4.4, 1.75}}], 
          Text[
           Style[
            StringForm["``, ``", 
             Subscript[
             "\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 0], 
             Subscript[
             "\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 2]], 
            RGBColor[0.5, 0, 0.5], 14], {5.35, 1.75}]}], $CellContext`green = 
       Graphics[{
          RGBColor[0, 1, 0], 
          Thickness[0.004], 
          Line[{{0.3, 1.75}, {0.8, 1.75}}], 
          Text[
           Style[
            StringForm["Both in ``", 
             Subscript[
             "\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 1]], 
            RGBColor[0, 1, 0], 14], {2.1, 1.75}]}], $CellContext`orange = 
       Graphics[{
          RGBColor[1, 0.5, 0], 
          Thickness[0.004], 
          Line[{{3.9, 1.}, {4.4, 1.}}], 
          Text[
           Style[
            StringForm["``, ``", 
             Subscript[
             "\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 1], 
             Subscript[
             "\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 2]], 
            RGBColor[1, 0.5, 0], 14], {5.35, 1.}]}], $CellContext`black = 
       Graphics[{
          GrayLevel[0], 
          Thickness[0.004], 
          Line[{{0.3, 1.}, {0.8, 1.}}], 
          Text[
           Style[
            StringForm["Both in ``", 
             Subscript[
             "\!\(\*\nStyleBox[\"E\",\nFontSlant->\"Italic\"]\)", 2]], 
            GrayLevel[0], 14], {2.1, 1.}]}], $CellContext`Earrow = Graphics[{
          Thickness[0.0035], 
          Arrowheads[0.03], 
          Arrow[{{1.4, 7.5}, {1.4, 14}}], {
           Text[
            Style[$CellContext`Energy, 20], {0.8, 10.5}, Automatic, {0, 
            1}]}}], $CellContext`legendTitle = Graphics[
         Text[
          Style["Macrostate", 
           GrayLevel[0], 20], {3.15, 3.4}]], $CellContext`disLower = Graphics[{
          Dashing[{0, Small}], 
          Line[{{14.5, 10}, {21.5, 10}}], {
           Text[
            Style["0%", 12], {14, 10}, Automatic]}}], $CellContext`disUpper = 
       Graphics[{
          Dashing[{0, Small}], 
          Line[{{14.5, 14}, {21.5, 14}}], {
           Text[
            Style["100%", 12], {14, 14}, 
            Automatic]}}], $CellContext`fermLower = Graphics[{
          Dashing[{0, Small}], 
          Line[{{14.5, 4.5}, {21.5, 4.5}}], {
           Text[
            Style["0%", 12], {14, 4.5}, Automatic]}}], $CellContext`fermUpper = 
       Graphics[{
          Dashing[{0, Small}], 
          Line[{{14.5, 8.5}, {21.5, 8.5}}], {
           Text[
            Style["100%", 12], {14, 8.5}, 
            Automatic]}}], $CellContext`bosLower = Graphics[{
          Dashing[{0, Small}], 
          Line[{{14.5, -0.8}, {21.5, -0.8}}], {
           Text[
            Style["0%", 12], {14, -0.8}, Automatic]}}], $CellContext`bosUpper = 
       Graphics[{
          Dashing[{0, Small}], 
          Line[{{14.5, 3.2}, {21.5, 3.2}}], {
           Text[
            Style["100%", 12], {14, 3.2}, 
            Automatic]}}], $CellContext`legendBox = Graphics[{
          Thickness[0.004], 
          
          Line[{{0, 0.5}, {6.2, 0.5}, {6.2, 4}, {0, 4}, {
            0, 0.5}}]}], $CellContext`disPf[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{
          Inset[
           Style[
            StringForm["`` = ``", 
             Subscript[$CellContext`Q, $CellContext`d], 
             NumberForm[
              $CellContext`disQ[$CellContext`T], {4, 3}]], Large], {8.8, 
           11.025}, {Left, Center}]}], $CellContext`ferPf[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{
          Inset[
           Style[
            StringForm["`` = ``", 
             Subscript[$CellContext`Q, $CellContext`f], 
             NumberForm[
              $CellContext`ferQ[$CellContext`T], {4, 3}]], Large], {8.8, 
           5.55}, {Left, Center}]}], $CellContext`bosPf[
         Pattern[$CellContext`T, 
          Blank[]]] := Graphics[{
          Inset[
           Style[
            StringForm["`` = ``", 
             Subscript[$CellContext`Q, $CellContext`f], 
             NumberForm[
              $CellContext`bosQ[$CellContext`T], {4, 3}]], Large], {8.8, 
           0.25}, {Left, Center}]}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"],

Cell[TextData[{
 StyleBox["Question 3.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Observe the occupation probabilities in the low-temperature limit \
for each type of particle. Do these probabilities seem to align with your \
answers to Questions 1.2, 1.3, and 1.4? If not, then go back and reconsider \
your answers to those questions.",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 3.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Now, focus on the high-temperature limit. Why are only some of \
the macrostates possible for fermions, while all are possible for \
distinguishable particles and bosons? Why are all of the macrostates \
approaching equal probability for bosons, while they are not for \
distinguishable particles?",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 3.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" What appear to be the high-temperature limits of the partition \
function ",
  FontColor->GrayLevel[0]],
 StyleBox["Q",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox[" for each type of particle? Can you rationalize these values of ",
  FontColor->GrayLevel[0]],
 StyleBox["Q",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox[" by enumerating the possible distinct two-particle states for \
distinguishable particles, fermions, and bosons?",
  FontColor->GrayLevel[0]]
}], "Text"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{915, 1308},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (September 9, \
2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 289, 7, 200, "Title"],
Cell[CellGroupData[{
Cell[1800, 46, 77, 3, 83, "Section"],
Cell[1880, 51, 7802, 244, 914, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9719, 300, 94, 3, 83, "Section"],
Cell[9816, 305, 1321, 43, 112, "Text"],
Cell[11140, 350, 11188, 253, 610, "Output"],
Cell[22331, 605, 1753, 42, 239, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[24121, 652, 95, 3, 83, "Section"],
Cell[24219, 657, 800, 23, 108, "Text"],
Cell[25022, 682, 17090, 402, 576, "Output"],
Cell[42115, 1086, 1493, 37, 220, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature cx06aln@qh8VVB1vi5x13Kwr *)
