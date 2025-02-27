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
NotebookDataLength[     44221,       1113]
NotebookOptionsPosition[     44124,       1086]
NotebookOutlinePosition[     44575,       1106]
CellTagsIndexPosition[     44532,       1103]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 StyleBox["1-D Potential Energy Landscapes\n",
  FontColor->GrayLevel[0]],
 StyleBox["Rob Berger, Department of Chemistry, Western Washington University\
\nRevised October 2019",
  FontSize->18,
  FontColor->GrayLevel[0]]
}], "Title"],

Cell[CellGroupData[{

Cell[TextData[{
 "What do we expect?",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "This lesson is intended to unify our understanding of solutions to the Schr\
\[ODoubleDot]dinger equation (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     OverscriptBox["H", "^"], "\[Psi]"}], "=", 
    RowBox[{"E", " ", "\[Psi]"}]}], TraditionalForm]]],
 ") in one dimension. Recall that the 1-dimensional (1-D) Hamiltonian \
operator has the form ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{
     RowBox[{"-", 
      FractionBox[
       SuperscriptBox["\[HBar]", "2"], 
       RowBox[{"2", "m"}]]}], 
     RowBox[{
      FractionBox[
       SuperscriptBox["d", "2"], 
       SuperscriptBox[
        StyleBox["dx",
         FontSlant->"Italic"], "2"]], 
      RowBox[{"+", 
       RowBox[{"V", "(", "x", ")"}]}]}]}]}], TraditionalForm]]],
 ", where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"V", "(", "x", ")"}], TraditionalForm]]],
 " is the potential energy operator dictated by the chemical environment.\n\n\
To think about what we expect the eigenfunctions (wavefunctions) and \
eigenvalues (energies) of this equation to be, let\[CloseCurlyQuote]s \
consider a region in which the potential energy operator is a constant, ",
 StyleBox["V",
  FontSlant->"Italic"],
 ". The 1-D Schr\[ODoubleDot]dinger equation then becomes: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"-", 
       FractionBox[
        SuperscriptBox["\[HBar]", "2"], 
        RowBox[{"2", "m"}]]}], 
      FractionBox[
       RowBox[{
        SuperscriptBox["d", "2"], "\[Psi]"}], 
       SuperscriptBox[
        StyleBox["dx",
         FontSlant->"Italic"], "2"]]}], "+", 
     RowBox[{"V", " ", "\[Psi]"}]}], "=", 
    RowBox[{"E", " ", "\[Psi]"}]}], TraditionalForm]]],
 ", or ",
 Cell[BoxData[
  FormBox[
   StyleBox[
    RowBox[{
     FractionBox[
      RowBox[{
       SuperscriptBox["d", "2"], "\[Psi]"}], 
      SuperscriptBox[
       StyleBox["dx",
        FontSlant->"Italic"], "2"]], "=", 
     RowBox[{
      FractionBox[
       RowBox[{"2", "m"}], 
       SuperscriptBox["\[HBar]", "2"]], 
      RowBox[{"(", 
       RowBox[{"V", "-", "E"}], ")"}], "\[Psi]"}]}],
    FontWeight->"Bold",
    Background->RGBColor[0.87, 0.94, 1]], TraditionalForm]],
  Background->RGBColor[0.87, 0.94, 1]],
 ". Consider the highlighted equation when answering the questions below.\n\n",
 StyleBox["Question 1.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" If ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{"E", ">", "V"}], TraditionalForm]]],
 " in the region of interest (that is, the energy of the wavefunction is \
greater than the potential energy operator), what mathematical form(s) can \
the wavefunction ",
 Cell[BoxData[
  FormBox["\[Psi]", TraditionalForm]]],
 " have?\n\n",
 StyleBox["Question 1.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" If ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{"E", "<", "V"}], TraditionalForm]]],
 " in the region of interest (that is, the energy of the wavefunction is less \
than the potential energy operator), what mathematical form(s) can the \
wavefunction ",
 Cell[BoxData[
  FormBox["\[Psi]", TraditionalForm]]],
 " have?\n\n",
 StyleBox["Question 1.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" If ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is extremely large (approaching infinity) in the region of interest, what \
value must the wavefunction ",
 Cell[BoxData[
  FormBox["\[Psi]", TraditionalForm]]],
 " approach and why?\n\nHopefully, your answers suggest that wavefunctions \
must be oscillatory in regions where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"E", ">", "V"}], TraditionalForm]]],
 ", must decay exponentially in regions where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"V", ">", "E"}], TraditionalForm]]],
 ", and must approach zero in regions where ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is extremely large. These expectations, along with the quantum mechanical \
postulate that wavefuctions must be continuous and smooth, will go a long way \
toward understanding solutions to the Schr\[ODoubleDot]dinger equation."
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Particle in a box vs. harmonic oscillator",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "While the 1-D potential energy operator ",
 Cell[BoxData[
  FormBox[
   RowBox[{"V", "(", "x", ")"}], TraditionalForm]]],
 " can in principle be any function, there are two simple examples that are \
commonly seen in quantum mechanics courses: the ",
 StyleBox["particle in a box",
  FontWeight->"Bold"],
 " and the ",
 StyleBox["harmonic oscillator",
  FontWeight->"Bold"],
 ". Both can be solved analytically, and both have physical and chemical \
significance. At first glance, these two model systems may have the \
appearance of being completely different. But at their core, they are very \
similar. In both cases, we are interested in finding the wavefunctions and \
energies of a Hamiltonian operator in which the potential energy is low in a \
specific region and tends toward infinity far from that region. Their main \
difference is the functional form of the potential energy operator, ",
 StyleBox["V",
  FontSlant->"Italic"],
 "(",
 StyleBox["x",
  FontSlant->"Italic"],
 "). For the particle in a box, ",
 StyleBox["V",
  FontSlant->"Italic"],
 "(",
 StyleBox["x",
  FontSlant->"Italic"],
 ") has a constant value (which we define as 0) inside the \
\[OpenCurlyDoubleQuote]box\[CloseCurlyDoubleQuote], and sharply jumps to \
infinity outside. For the harmonic oscillator, the potential energy operator \
rises parabolically around the origin as a Hooke\[CloseCurlyQuote]s law \
spring with spring constant ",
 StyleBox["k",
  FontSlant->"Italic"],
 ": ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"V", "(", "x", ")"}], "=", 
    RowBox[{
     FractionBox["1", "2"], 
     SuperscriptBox[
      StyleBox["kx",
       FontSlant->"Italic"], "2"]}]}], TraditionalForm]]],
 ".\n\nMathematically, these different potential energy operators lead the \
particle in a box and harmonic oscillator to have different wavefunctions and \
energies. Because our goal here is to make sense of the solutions rather than \
solve the Schr\[ODoubleDot]dinger equation step-by-step, \
let\[CloseCurlyQuote]s skip right to the wavefunctions and energies.\n\nFor \
the ",
 StyleBox["particle in a box",
  FontWeight->"Bold"],
 ", the wavefunctions and energies are:\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["\[Psi]", "n"], "(", "x", ")"}], "=", 
    RowBox[{"N", " ", 
     RowBox[{"sin", "(", 
      FractionBox[
       StyleBox[
        RowBox[{
         StyleBox["n",
          FontSlant->"Italic"], 
         StyleBox["\[Pi]",
          FontSlant->"Plain"], 
         StyleBox["x",
          FontSlant->"Italic"]}]], 
       StyleBox["L",
        FontSlant->"Italic"]], ")"}]}]}], TraditionalForm]]],
 "          and          ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["E", "n"], "=", 
    FractionBox[
     RowBox[{
      SuperscriptBox["h", "2"], 
      SuperscriptBox["n", "2"]}], 
     RowBox[{"8", "m", " ", 
      SuperscriptBox[
       StyleBox["L",
        FontSlant->"Italic"], "2"]}]]}], TraditionalForm]]],
 "\nwhere ",
 StyleBox["N",
  FontSlant->"Italic"],
 " is a normalization constant, ",
 StyleBox["m",
  FontSlant->"Italic"],
 " is the mass of the particle, ",
 StyleBox["L",
  FontSlant->"Italic"],
 " is the length of the box, and ",
 StyleBox["n",
  FontSlant->"Italic"],
 " is a quantum number that can take on positive integer values (1, 2, 3, \
...).\n\nFor the ",
 StyleBox["harmonic oscillator",
  FontWeight->"Bold"],
 ", the wavefunctions and energies are:\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["\[Psi]", "v"], "(", "x", ")"}], "=", 
    RowBox[{"N", " ", 
     RowBox[{
      SubscriptBox["H", "v"], "(", 
      RowBox[{
       FractionBox[
        RowBox[{
         SuperscriptBox["m", 
          RowBox[{"1", "/", "4"}]], 
         SuperscriptBox["k", 
          RowBox[{"1", "/", "4"}]]}], 
        SuperscriptBox["\[HBar]", 
         RowBox[{"1", "/", "2"}]]], "x"}], ")"}], 
     SuperscriptBox["e", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["x", "2"], 
          SqrtBox[
           StyleBox["mk",
            FontSlant->"Italic"]]}], ")"}]}], "/", 
       RowBox[{"(", 
        RowBox[{"2", "\[HBar]"}], ")"}]}]]}]}], TraditionalForm]]],
 "          and          ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["E", "v"], "=", 
    RowBox[{"\[HBar]", 
     SqrtBox[
      FractionBox["k", "m"]], 
     RowBox[{"(", 
      RowBox[{"v", "+", 
       FractionBox["1", "2"]}], ")"}]}]}], TraditionalForm]]],
 "\nwhere ",
 StyleBox["N",
  FontSlant->"Italic"],
 " is a normalization constant, ",
 StyleBox["k",
  FontSlant->"Italic"],
 " is the spring constant, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["H", "v"], TraditionalForm]]],
 " are the series of so-called Hermite polynomials, and ",
 StyleBox["v",
  FontSlant->"Italic"],
 " is a quantum number that can take on non-negative integer values (0, 1, 2, \
...).",
 StyleBox["\n\n",
  FontWeight->"Bold"],
 "The energies and wavefunctions for the particle in a box and harmonic \
oscillator are illustrated in the following simulation. Before answering the \
questions below, take some time to explore the simulation, looking at the \
relationships between potential energy functions (black curves), \
wavefunctions (blue and purple curves), and energies (gray and red lines).\n"
}], "Text"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`k$$ = 1, $CellContext`L$$ = 
    4., $CellContext`n$$ = 1, $CellContext`v$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`L$$], 4, 3, 0.1}, {
      Hold[$CellContext`k$$], 1, 3, 0.2}, {
      Hold[$CellContext`n$$], 1, 4, 1}, {
      Hold[$CellContext`v$$], 0, 3, 1}}, Typeset`size$$ = {
    575., {242., 247.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`L$138530$$ = 
    0, $CellContext`k$138531$$ = 0, $CellContext`n$138532$$ = 
    0, $CellContext`v$138533$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`k$$ = 1, $CellContext`L$$ = 
        4, $CellContext`n$$ = 1, $CellContext`v$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`L$$, $CellContext`L$138530$$, 0], 
        Hold[$CellContext`k$$, $CellContext`k$138531$$, 0], 
        Hold[$CellContext`n$$, $CellContext`n$138532$$, 0], 
        Hold[$CellContext`v$$, $CellContext`v$138533$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`testplot[$CellContext`L$$, $CellContext`k$$, \
$CellContext`n$$, $CellContext`v$$], 
      "Specifications" :> {{$CellContext`L$$, 4, 3, 0.1}, {$CellContext`k$$, 
         1, 3, 0.2}, {$CellContext`n$$, 1, 4, 1}, {$CellContext`v$$, 0, 3, 
         1}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{620., {328., 333.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`testplot[
         Pattern[$CellContext`L, 
          Blank[]], 
         Pattern[$CellContext`k, 
          Blank[]]] := Show[
         Plot[(0.5 $CellContext`k) ($CellContext`x - 12)^2, {$CellContext`x, 
           7, 17}, PlotStyle -> {
            Thickness[0.01], Black}], 
         Graphics[{
           Thickness[0.01], 
           
           Line[{{-($CellContext`L/2), 12.6}, {-($CellContext`L/2), 
              0.}, {$CellContext`L/2, 0.}, {$CellContext`L/2, 12.6}}]}], 
         Graphics[{{
            Thickness[0.005], 
            Arrow[{{-5, 3}, {-5, 10.5}}]}, {
            Text[
             Style[$CellContext`Energy, 20], {-5.7, 6.5}, Automatic, {0, 
             1}]}}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{-0.5, (Pi^2/2) (1/$CellContext`L^2)}, {
             0.5, (Pi^2/2) (1/$CellContext`L^2)}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{-0.5, (Pi^2/2) (4/$CellContext`L^2)}, {
             0.5, (Pi^2/2) (4/$CellContext`L^2)}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{-0.5, (Pi^2/2) (9/$CellContext`L^2)}, {
             0.5, (Pi^2/2) (9/$CellContext`L^2)}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{-0.5, (Pi^2/2) (16/$CellContext`L^2)}, {
             0.5, (Pi^2/2) (16/$CellContext`L^2)}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{11.5, 0.5 Sqrt[$CellContext`k]}, {
             12.5, 0.5 Sqrt[$CellContext`k]}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{11.5, 1.5 Sqrt[$CellContext`k]}, {
             12.5, 1.5 Sqrt[$CellContext`k]}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{11.5, 2.5 Sqrt[$CellContext`k]}, {
             12.5, 2.5 Sqrt[$CellContext`k]}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{11.5, 3.5 Sqrt[$CellContext`k]}, {
             12.5, 3.5 Sqrt[$CellContext`k]}}]}], 
         PlotRange -> {{-6, 17}, {0, 12}}, Axes -> False, AspectRatio -> 0.5, 
         ImageSize -> 575], $CellContext`testplot[
         Pattern[$CellContext`L, 
          Blank[]], 
         Pattern[$CellContext`k, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]], 
         Pattern[$CellContext`v, 
          Blank[]]] := Show[
         Plot[(0.5 $CellContext`k) ($CellContext`x - 12)^2, {$CellContext`x, 
           12 - 5/Sqrt[$CellContext`k], 12 + 5/Sqrt[$CellContext`k]}, 
          PlotStyle -> {
            Thickness[0.01], Black}], 
         Graphics[{
           Thickness[0.01], 
           
           Line[{{(-$CellContext`L)/2, 12.6}, {(-$CellContext`L)/2, 
              0.}, {$CellContext`L/2, 0.}, {$CellContext`L/2, 12.6}}]}], 
         Graphics[{{
            Thickness[0.005], 
            Arrow[{{-5, 3}, {-5, 10.5}}]}, {
            Text[
             Style[$CellContext`Energy, 20], {-5.7, 6.5}, Automatic, {0, 
             1}]}}], 
         Graphics[{{
            Thickness[0.005], 
            Arrow[{{-5, -5.2}, {-5, -0.7}}]}, {
            Text[
             Style[$CellContext`Wavefunction, 20], {-5.7, -3}, Automatic, {0, 
             1}]}}], 
         Graphics[{{
            Text[
             Style["Particle in a box", Bold, 20], {0, 15.2}, Automatic, {1, 
             0}]}, {
            Text[
             Style["Harmonic oscillator", Bold, 20], {12, 15.2}, Automatic, {
             1, 0}]}}], 
         Graphics[{{
            Text[
             Style[
             "\!\(\*\nStyleBox[\"L\",\nFontSlant->\"Italic\"]\)" == 
              NumberForm[$CellContext`L, 2] 
               ", \!\(\*\nStyleBox[\"n\",\nFontSlant->\"Italic\"]\)" == 
              NumberForm[$CellContext`n, 1], Bold, 20], {0, 13.9}, 
             Automatic, {1, 0}]}, {
            Text[
             Style[
             "\!\(\*\nStyleBox[\"k\",\nFontSlant->\"Italic\"]\)" == 
              NumberForm[$CellContext`k, 2] 
               ", \!\(\*\nStyleBox[\"v\",\nFontSlant->\"Italic\"]\)" == 
              NumberForm[$CellContext`v, 1], Bold, 20], {12, 13.9}, 
             Automatic, {1, 0}]}}], 
         Graphics[{
           Thickness[0.005], Gray, 
           Line[{{-0.5, (Pi^2/2) (1/$CellContext`L^2)}, {
             0.5, (Pi^2/2) (1/$CellContext`L^2)}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{-0.5, (Pi^2/2) (4/$CellContext`L^2)}, {
             0.5, (Pi^2/2) (4/$CellContext`L^2)}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{-0.5, (Pi^2/2) (9/$CellContext`L^2)}, {
             0.5, (Pi^2/2) (9/$CellContext`L^2)}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{-0.5, (Pi^2/2) (16/$CellContext`L^2)}, {
             0.5, (Pi^2/2) (16/$CellContext`L^2)}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{11.5, 0.5 Sqrt[$CellContext`k]}, {
             12.5, 0.5 Sqrt[$CellContext`k]}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{11.5, 1.5 Sqrt[$CellContext`k]}, {
             12.5, 1.5 Sqrt[$CellContext`k]}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{11.5, 2.5 Sqrt[$CellContext`k]}, {
             12.5, 2.5 Sqrt[$CellContext`k]}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           
           Line[{{11.5, 3.5 Sqrt[$CellContext`k]}, {
             12.5, 3.5 Sqrt[$CellContext`k]}}]}], 
         Graphics[{
           Thickness[0.01], Red, 
           
           Line[{{-0.5, (Pi^2/2) ($CellContext`n^2/$CellContext`L^2)}, {
             0.5, (Pi^2/2) ($CellContext`n^2/$CellContext`L^2)}}]}], 
         Graphics[{
           Thickness[0.01], Red, 
           
           Line[{{11.5, ($CellContext`v + 0.5) Sqrt[$CellContext`k]}, {
             12.5, ($CellContext`v + 0.5) Sqrt[$CellContext`k]}}]}], 
         Plot[(2 Sqrt[2/$CellContext`L]) 
           Sin[($CellContext`n 
              Pi) (($CellContext`x + $CellContext`L/2)/$CellContext`L)] - 
          4, {$CellContext`x, (-$CellContext`L)/2, $CellContext`L/2}, 
          PlotStyle -> {
            Thickness[0.005], Blue}, Filling -> -4], 
         Plot[((((2 (-1)^$CellContext`v) (Sqrt[$CellContext`k]/Pi)^(1/4)) (1/
              Sqrt[2^$CellContext`v Factorial[$CellContext`v]])) 
            HermiteH[$CellContext`v, $CellContext`k^(1/4) ($CellContext`x - 
               12)])/E^(Sqrt[$CellContext`k] (($CellContext`x - 12)^2/2)) - 
          4, {$CellContext`x, 7, 17}, PlotStyle -> {
            Thickness[0.005], Purple}, Filling -> -4], 
         PlotRange -> {{-6, 17}, {-5, 15}}, Axes -> False, AspectRatio -> 
         0.85, ImageSize -> 575], $CellContext`L$$ = 4., $CellContext`k$$ = 
       1, $CellContext`v$$ = 0}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Input"],

Cell[TextData[{
 StyleBox["Question 2.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" If the potential energy operator has a constant value ",
  FontColor->GrayLevel[0]],
 StyleBox["V",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox[" over all space, the energies of the wavefunctions are not \
quantized (i.e., they can take on any value greater than ",
  FontColor->GrayLevel[0]],
 StyleBox["V",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox["). So why, for the particle in a box and harmonic oscillator \
models, are the energies quantized",
  FontColor->GrayLevel[0]],
 "?\n\n",
 StyleBox["Question 2.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Recall your expectations from the previous section: ",
  FontColor->GrayLevel[0]],
 "that wavefunctions must be oscillatory in regions where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"E", ">", "V"}], TraditionalForm]]],
 ", must decay exponentially in regions where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"V", ">", "E"}], TraditionalForm]]],
 ", and must approach zero in regions where ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is extremely large",
 StyleBox[". Is the appearance of the wavefunctions in the simulation above \
consistent with these expectations?",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 2.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" In the simulation above, each particle in a box wavefunction has \
a quantum number ",
  FontColor->GrayLevel[0]],
 StyleBox["n",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox[", and each harmonic oscillator wavefunction has a quantum number ",
  
  FontColor->GrayLevel[0]],
 StyleBox["v",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox[". In general, what is the relationship between ",
  FontColor->GrayLevel[0]],
 StyleBox["n",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox[" and ",
  FontColor->GrayLevel[0]],
 StyleBox["v",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox[" such that the two models have wavefunctions that look most \
similar to each other?\n",
  FontColor->GrayLevel[0]],
 "\n",
 StyleBox["Question 2.4:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" In what ways do the particle in a box and harmonic oscillator \
wavefunctions differ in their appearance? Does quantum tunneling (a nonzero \
probability of finding the particle in a classically forbidden region) occur \
in either case?\n",
  FontColor->GrayLevel[0]],
 "\n",
 StyleBox["Question 2.5:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" What is the mathematical relationship between energy and quantum \
number in each of the models? Are the energies in either model equally \
spaced?\n",
  FontColor->GrayLevel[0]],
 "\n",
 StyleBox["Question 2.6:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" What is the mathematical relationship between the energy of a \
particle in a box and the length of the box, ",
  FontColor->GrayLevel[0]],
 StyleBox["L",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox["? What is the mathematical relationship between the energy of a \
harmonic oscillator and its spring constant, ",
  FontColor->GrayLevel[0]],
 StyleBox["k",
  FontSlant->"Italic",
  FontColor->GrayLevel[0]],
 StyleBox["?",
  FontColor->GrayLevel[0]]
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Physical significance of these models",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "As chemists, it is important for us to understand not only the mathematics \
of these two models, but also the chemical systems to which they are most \
relevant.\n\n",
 StyleBox["Question 3.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" By its nature, the particle in a box model is most appropriate \
for a situation in which an object has a nearly constant potential energy \
within a specified region, and is essentially forbidden from leaving that \
region. This model can be applied to a variety of chemical systems in very \
different ways. Describe one appropriate use of the particle in a box model \
in which the particle is an atom or molecule. Describe another appropriate \
use of the particle in a box model in which the particle is an electron.\n",
  FontColor->GrayLevel[0]],
 "\n",
 StyleBox["Question 3.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" By its nature, the harmonic oscillator model is most appropriate \
for a situation in which an object has a parabolic potential energy curve \
around an energy minimum. Describe one appropriate use of the harmonic \
oscillator model in chemistry.",
  FontColor->GrayLevel[0]]
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "More general potential energy landscapes",
 StyleBox["\n", "Text"]
}], "Section"],

Cell["\<\
While the particle in a box and harmonic oscillator are the examples most \
commonly studied in quantum mechanics courses, the same principles can be \
used to understand any 1-D potential energy landscape. The following \
simulation shows the wavefunctions and energies of a particle in a box with a \
step of adjustable length and potential energy. Before answering the \
questions below, take some time to explore the simulation, looking especially \
at the appearance of each wavefunction on both sides of the step.
\
\>", "Text"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`QuantumNumber$$ = 
    1, $CellContext`StepHeight$$ = 1., $CellContext`StepPosition$$ = 2., 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`StepPosition$$], 2, 4, 0.2}, {
      Hold[$CellContext`StepHeight$$], 1., 2., 0.1}, {
      Hold[$CellContext`QuantumNumber$$], 1, 4, 1}}, Typeset`size$$ = {
    575., {242., 247.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`StepPosition$333983$$ = 
    0, $CellContext`StepHeight$333984$$ = 
    0, $CellContext`QuantumNumber$333985$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`QuantumNumber$$ = 
        1, $CellContext`StepHeight$$ = 1., $CellContext`StepPosition$$ = 2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`StepPosition$$, $CellContext`StepPosition$333983$$, 
         0], 
        Hold[$CellContext`StepHeight$$, $CellContext`StepHeight$333984$$, 0], 
        
        Hold[$CellContext`QuantumNumber$$, \
$CellContext`QuantumNumber$333985$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`step[$CellContext`StepPosition$$, \
$CellContext`StepHeight$$, $CellContext`QuantumNumber$$], 
      "Specifications" :> {{$CellContext`StepPosition$$, 2, 4, 
         0.2}, {$CellContext`StepHeight$$, 1., 2., 
         0.1}, {$CellContext`QuantumNumber$$, 1, 4, 1}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{620., {314., 319.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`step[
         Pattern[$CellContext`StepPosition, 
          Blank[]], 
         Pattern[$CellContext`StepHeight, 
          Blank[]], 
         Pattern[$CellContext`QuantumNumber, 
          Blank[]]] := 
       Show[{$CellContext`EN = 
           Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
             10 $CellContext`StepHeight - 9, $CellContext`QuantumNumber]; 
          If[$CellContext`EN <= $CellContext`StepHeight, {$CellContext`norm = 
              1/Sqrt[NIntegrate[
                 Sin[Sqrt[
                    2 $CellContext`EN] $CellContext`x]^2, {$CellContext`x, 
                   0, $CellContext`StepPosition}] + 
                NIntegrate[((
                    Sqrt[2 $CellContext`EN] (
                    Cos[Sqrt[2 $CellContext`EN] $CellContext`StepPosition] (
                    Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)]^(-1)/(
                    E^(($CellContext`StepPosition - $CellContext`box) 
                    Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)]) + 
                    E^((-($CellContext`StepPosition - $CellContext`box)) 
                    Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)]))))) (
                    E^(($CellContext`x - $CellContext`box) 
                    Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)]) - 
                    E^((-($CellContext`x - $CellContext`box)) 
                    Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)])))^2, \
{$CellContext`x, $CellContext`StepPosition, $CellContext`box}]]; Show[
               
               Plot[(1.2 $CellContext`norm) 
                 Sin[Sqrt[2 $CellContext`EN] $CellContext`x] - 
                1.9, {$CellContext`x, 0, $CellContext`StepPosition - 0.012}, 
                PlotStyle -> {
                  Thickness[0.005], 
                  RGBColor[0, 0.6, 0]}, Filling -> -1.9], 
               
               Plot[((1.2 $CellContext`norm) (
                   Sqrt[2 $CellContext`EN] (
                    Cos[Sqrt[2 $CellContext`EN] $CellContext`StepPosition] (
                    Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)]^(-1)/(
                    E^(($CellContext`StepPosition - $CellContext`box) 
                    Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)]) + 
                    E^((-($CellContext`StepPosition - $CellContext`box)) 
                    Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)])))))) \
(E^(($CellContext`x - $CellContext`box) 
                    Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)]) - 
                  E^((-($CellContext`x - $CellContext`box)) 
                   Sqrt[2 ($CellContext`StepHeight - $CellContext`EN)])) - 
                1.9, {$CellContext`x, $CellContext`StepPosition, \
$CellContext`box}, PlotStyle -> {
                  Thickness[0.005], 
                  RGBColor[0, 0.6, 0]}, Filling -> -1.9], 
               PlotRange -> {{0, $CellContext`box}, {-3, -1}}, Axes -> 
               False]}, {$CellContext`norm = 
              1/Sqrt[NIntegrate[
                 Sin[Sqrt[
                    2 $CellContext`EN] $CellContext`x]^2, {$CellContext`x, 
                   0, $CellContext`StepPosition}] + 
                NIntegrate[((
                    Sqrt[2 $CellContext`EN] (
                    Cos[Sqrt[2 $CellContext`EN] $CellContext`StepPosition] (
                    Sqrt[2 ($CellContext`EN - $CellContext`StepHeight)]^(-1)/
                    Cos[Sqrt[
                    2 ($CellContext`EN - $CellContext`StepHeight)] \
($CellContext`StepPosition - $CellContext`box)]))) 
                   Sin[Sqrt[
                    2 ($CellContext`EN - $CellContext`StepHeight)] \
($CellContext`x - $CellContext`box)])^2, {$CellContext`x, \
$CellContext`StepPosition, $CellContext`box}]]; Show[
               
               Plot[(1.2 $CellContext`norm) 
                 Sin[Sqrt[2 $CellContext`EN] $CellContext`x] - 
                1.9, {$CellContext`x, 0, $CellContext`StepPosition - 0.012}, 
                PlotStyle -> {
                  Thickness[0.005], 
                  RGBColor[0, 0.6, 0]}, Filling -> -1.9], 
               
               Plot[(((1.2 $CellContext`norm) Sqrt[2 $CellContext`EN]) (
                   Cos[Sqrt[2 $CellContext`EN] $CellContext`StepPosition] (
                    Sqrt[2 ($CellContext`EN - $CellContext`StepHeight)]^(-1)/
                    Cos[Sqrt[
                    2 ($CellContext`EN - $CellContext`StepHeight)] \
($CellContext`StepPosition - $CellContext`box)]))) 
                 Sin[Sqrt[
                    2 ($CellContext`EN - $CellContext`StepHeight)] \
($CellContext`x - $CellContext`box)] - 
                1.9, {$CellContext`x, $CellContext`StepPosition, \
$CellContext`box}, PlotStyle -> {
                  Thickness[0.005], 
                  RGBColor[0, 0.6, 0]}, Filling -> -1.9], 
               PlotRange -> {{0, $CellContext`box}, {-3, -1}}, Axes -> 
               False]}]}, 
         Graphics[{
           Thickness[0.01], 
           
           Line[{{0, 4.6}, {
             0, 0.}, {$CellContext`StepPosition, 
              0.}, {$CellContext`StepPosition, $CellContext`StepHeight}, \
{$CellContext`box, $CellContext`StepHeight}, {$CellContext`box, 4.6}}]}], 
         Graphics[{{
            Thickness[0.005], 
            Arrow[{{-1, 1.2}, {-1, 3.8}}]}, {
            Text[
             Style[$CellContext`Energy, 20], {-1.22, 2.42}, Automatic, {0, 
             1}]}}], 
         Graphics[{{
            Thickness[0.005], 
            Arrow[{{-1, -2.5}, {-1, -0.9}}]}, {
            Text[
             Style[$CellContext`Wavefunction, 20], {-1.22, -1.7}, Automatic, {
             0, 1}]}}], 
         Graphics[{{
            Text[
             Style[
             "Step position" == 
              NumberForm[$CellContext`StepPosition, 2] ", Step height" == 
              NumberForm[$CellContext`StepHeight, 2] ", Quantum number" == 
              NumberForm[$CellContext`QuantumNumber, 1], Bold, 19], {1.9, 
             5.05}, Automatic, {1, 0}]}}], 
         Graphics[{
           Thickness[0.005], Gray, 
           Line[{{2.3, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 9, 1]}, {2.7, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 9, 1]}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           Line[{{2.3, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 9, 2]}, {2.7, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 9, 2]}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           Line[{{2.3, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 9, 3]}, {2.7, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 9, 3]}}]}], 
         Graphics[{
           Thickness[0.005], Gray, 
           Line[{{2.3, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 9, 4]}, {2.7, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 9, 4]}}]}], 
         Graphics[{
           Thickness[0.01], Red, 
           Line[{{2.3, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 9, $CellContext`QuantumNumber]}, {
             2.7, 
              
              Part[$CellContext`energies, 5 $CellContext`StepPosition - 9, 
               10 $CellContext`StepHeight - 
               9, $CellContext`QuantumNumber]}}]}], 
         PlotRange -> {{-1.3, 5.1}, {-2.45, 4.95}}, Axes -> False, 
         AspectRatio -> 0.85, ImageSize -> 575], $CellContext`EN = 
       0.6246971158890121, $CellContext`energies = CompressedData["
1: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
G5Ejssj3oEr2Uj0G/g83Zg1u
        "], $CellContext`norm = 
       0.8011783774772172, $CellContext`box = 5.}; Typeset`initDone$$ = True),
    
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Input"],

Cell[TextData[{
 StyleBox["Question 4.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" In the simulation above, consider the wavefunction corresponding \
to a step position of 2, a step height of 2, and a quantum number of 1. The \
energy of this wavefunction is higher than the potential energy on one side \
of the step, and lower than the potential energy on the other side. Is the \
appearance of the wavefunction on each side of the step consistent with this \
observation?",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 4.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" For the same wavefunction in the previous question (step position \
= 2, step height = 2, quantum number = 1), on which side of the step is the \
particle more likely to be found? Does this make sense, and why?\n",
  FontColor->GrayLevel[0]],
 "\n",
 StyleBox["Question 4.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Let us now focus on the first excited state of the same potential \
energy landscape (step position = 2, step height = 2, quantum number = 2).The \
energy of this wavefunction is higher than the potential energy on both sides \
of the step. Is the appearance of the wavefunction on each side of the step \
consistent with this observation? On which side of the step is the particle \
more likely to be found?\n",
  FontColor->GrayLevel[0]],
 "\n",
 StyleBox["Question 4.4:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" If the particle in this case is an electron, for what type of \
molecule might this potential energy landscape (a box with a step) be \
relevant?",
  FontColor->GrayLevel[0]]
}], "Text"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{914, 1308},
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
Cell[1486, 35, 250, 7, 144, "Title"],
Cell[CellGroupData[{
Cell[1761, 46, 77, 3, 83, "Section"],
Cell[1841, 51, 4300, 131, 458, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6178, 187, 100, 3, 83, "Section"],
Cell[6281, 192, 5355, 165, 578, "Text"],
Cell[11639, 359, 9282, 220, 678, "Input"],
Cell[20924, 581, 3536, 103, 393, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[24497, 689, 96, 3, 83, "Section"],
Cell[24596, 694, 1261, 24, 220, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[25894, 723, 99, 3, 83, "Section"],
Cell[25996, 728, 544, 9, 125, "Text"],
Cell[26543, 739, 15767, 303, 650, "Input"],
Cell[42313, 1044, 1783, 38, 296, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature xwTznvLsUs2Q@DgTXGmYuKnV *)
