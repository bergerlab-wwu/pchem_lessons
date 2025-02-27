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
NotebookDataLength[     22295,        627]
NotebookOptionsPosition[     22318,        604]
NotebookOutlinePosition[     22769,        624]
CellTagsIndexPosition[     22726,        621]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 StyleBox["Particle in a Box",
  FontColor->GrayLevel[0]],
 StyleBox["\n", "Text",
  FontColor->GrayLevel[0]],
 StyleBox["Rob Berger, Department of Chemistry, Western Washington University\
\nRevised July 2017",
  FontSize->18,
  FontColor->GrayLevel[0]]
}], "Title"],

Cell[CellGroupData[{

Cell[TextData[{
 "General considerations",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "In this model system, the \
\[OpenCurlyDoubleQuote]box\[CloseCurlyDoubleQuote] is a region of constant \
potential (which we define as ",
 StyleBox["V ",
  FontSlant->"Italic"],
 "= 0) surrounded by sharp boundaries at which the potential jumps to ",
 StyleBox["V ",
  FontSlant->"Italic"],
 "= ",
 Cell[BoxData[
  FormBox["\[Infinity]", TraditionalForm]]],
 ". The \[OpenCurlyDoubleQuote]particle\[CloseCurlyDoubleQuote] is confined \
entirely to the box, as its energy would be infinite if its wavefunction were \
nonzero outside the box. Inside the box, wavefunctions with well-defined \
energy are eigenfunctions of the free-space Hamiltonian operator (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{
     RowBox[{"-", 
      FractionBox[
       SuperscriptBox["\[HBar]", "2"], 
       RowBox[{"2", "m"}]]}], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox[
       StyleBox["dx",
        FontSlant->"Italic"], "2"]]}]}], TraditionalForm]]],
 " in one dimension, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{"-", 
     RowBox[{
      FractionBox[
       SuperscriptBox["\[HBar]", "2"], 
       RowBox[{"2", "m"}]], "[", 
      RowBox[{
       FractionBox[
        SuperscriptBox["\[PartialD]", "2"], 
        RowBox[{"\[PartialD]", 
         SuperscriptBox["x", "2"]}]], "+", 
       FractionBox[
        SuperscriptBox["\[PartialD]", "2"], 
        RowBox[{"\[PartialD]", 
         SuperscriptBox["y", "2"]}]]}], "]"}]}]}], TraditionalForm]]],
 " in two dimensions, etc.) for which the wavefunction is equal to zero at \
all edges of the box. ",
 StyleBox["This requirement of continuity at the edges of the box (the \
boundary condition) results in discrete, quantized energy levels.",
  FontWeight->"Bold"],
 " The particle in a box model is a useful approximation for a particle that \
is effectively confined to a given space, from an electron in a conjugated \
molecule to a gas molecule in a macroscopic container."
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "The 1-dimensional case",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "Assuming we have a 1-dimension (1-D) box of length ",
 StyleBox["L",
  FontSlant->"Italic"],
 " with boundaries ",
 StyleBox["x",
  FontSlant->"Italic"],
 " = 0 and ",
 StyleBox["L",
  FontSlant->"Italic"],
 ", energy eigenfunctions are ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["\[Psi]", "n"], "(", "x", ")"}], "=", 
    RowBox[{
     SqrtBox[
      FractionBox["2", "L"]], 
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
 " with ",
 StyleBox["n",
  FontSlant->"Italic"],
 " = 1, 2, 3..., and their energies are ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["E", "n"], "=", 
    FractionBox[
     RowBox[{
      SuperscriptBox["n", "2"], 
      SuperscriptBox["h", "2"]}], 
     RowBox[{"8", 
      SuperscriptBox[
       StyleBox["mL",
        FontSlant->"Italic"], "2"]}]]}], TraditionalForm]]],
 ".\n\n",
 StyleBox["Question 1.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" As the mass of the particle increases, do the energies of the \
wavefunctions get closer together or farther apart?\n\n",
  FontColor->GrayLevel[0]],
 "Below, the three lowest-energy eigenfunctions are plotted for a particle in \
a 1-D box. The size of the box and the wavefunction of interest can be \
adjusted using the scroll bar. Note that the meaning of the axes in this type \
of representation can be a bit confusing. The horizontal axis refers to the \
location in space (",
 StyleBox["x",
  FontSlant->"Italic"],
 "), while the vertical axis shows the value of the wavefunction ",
 Cell[BoxData[
  FormBox["\[Psi]", TraditionalForm]]],
 ".\n"
}], "Text"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`L$$ = 1., $CellContext`n$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`L$$], 1, 3, 0.1}, {
      Hold[$CellContext`n$$], 1, 3, 1}}, Typeset`size$$ = {
    575., {187., 191.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`L$1371$$ = 
    0, $CellContext`n$1372$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`L$$ = 1, $CellContext`n$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`L$$, $CellContext`L$1371$$, 0], 
        Hold[$CellContext`n$$, $CellContext`n$1372$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`testplot[$CellContext`L$$, $CellContext`n$$], 
      "Specifications" :> {{$CellContext`L$$, 1, 3, 0.1}, {$CellContext`n$$, 
         1, 3, 1}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{620., {245., 250.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`testplot[
         Pattern[$CellContext`L, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]]] := Show[
         Plot[{
          Sqrt[1.5/$CellContext`L] 
           Sin[Pi (($CellContext`x - (3 - $CellContext`L)/2)/$CellContext`L)],
            Sqrt[1.5/$CellContext`L] 
           Sin[(2 Pi) (($CellContext`x - (3 - $CellContext`L)/
               2)/$CellContext`L)], Sqrt[1.5/$CellContext`L] 
           Sin[(3 Pi) (($CellContext`x - (3 - $CellContext`L)/
               2)/$CellContext`L)], Sqrt[1.5/$CellContext`L] 
           Sin[($CellContext`n 
              Pi) (($CellContext`x - (3 - $CellContext`L)/
               2)/$CellContext`L)]}, {$CellContext`x, (3 - $CellContext`L)/
           2, (3 + $CellContext`L)/2}, 
          PlotRange -> {{-0.3, 4.9}, {-1.6, 1.6}}, PlotStyle -> {{
             Thickness[0.005], Gray}, {
             Thickness[0.005], Gray}, {
             Thickness[0.005], Gray}, {
             Thickness[0.01], Red}}, AspectRatio -> Automatic, ImageSize -> 
          575, Axes -> False, PlotLabel -> 
          Style["\!\(\*\nStyleBox[\"L\",\nFontSlant->\"Italic\"]\)" == 
            NumberForm[$CellContext`L, 2] 
             ", \!\(\*\nStyleBox[\"n\",\nFontSlant->\"Italic\"]\)" == 
            NumberForm[$CellContext`n, 1], Bold, Black, 20]], 
         Graphics[{{
            Thickness[0.005], 
            Arrow[{{3.9, -1}, {3.9, 1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{4.2, 1/(5 $CellContext`L^2) - 1}, {
              4.7, 1/(5 $CellContext`L^2) - 1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{4.2, 4/(5 $CellContext`L^2) - 1}, {
              4.7, 4/(5 $CellContext`L^2) - 1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{4.2, 9/(5 $CellContext`L^2) - 1}, {
              4.7, 9/(5 $CellContext`L^2) - 1}}]}, {
            Thickness[0.01], Red, 
            
            Line[{{4.2, $CellContext`n^2/(5 $CellContext`L^2) - 1}, {
              4.7, $CellContext`n^2/(5 $CellContext`L^2) - 1}}]}, {Black, 
            Rectangle[{-0.2, -1.3}, {(3 - $CellContext`L)/2, 1.3}]}, {Black, 
            Rectangle[{(3 + $CellContext`L)/2, -1.3}, {3.2, 1.3}]}, {
            Text[
             Style[$CellContext`Energy, 20], {3.75, 0}, Automatic, {0, 
             1}]}}]]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Input"],

Cell[TextData[{
 StyleBox["Question 1.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" As the size of the box increases, do the energies of the \
wavefunctions get closer together or farther apart?\n\n",
  FontColor->GrayLevel[0]],
 StyleBox["Question 1.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Based on your answers to the previous two questions, which do you \
expect to have more noticeably quantized energy levels: an electron in a \
conjugated molecule, or a gas molecule in a macroscopic container?",
  FontColor->GrayLevel[0]]
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "The 2-dimensional case",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "For a 2-dimensional (2-D) rectangular box of edge lengths ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "1"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["L", "2"], TraditionalForm]]],
 ", energy eigenfunctions are ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["\[Psi]", 
      RowBox[{
       SubscriptBox["n", "1"], ",", 
       SubscriptBox["n", "2"]}]], "(", 
     RowBox[{"x", ",", "y"}], ")"}], "=", 
    RowBox[{
     SqrtBox[
      FractionBox["4", 
       RowBox[{
        SubscriptBox["L", "1"], 
        SubscriptBox["L", "2"]}]]], 
     RowBox[{"sin", "(", 
      FractionBox[
       RowBox[{
        SubscriptBox[
         StyleBox["n",
          FontSlant->"Italic"], "1"], 
        StyleBox[
         RowBox[{
          StyleBox["\[Pi]",
           FontSlant->"Plain"], 
          StyleBox["x",
           FontSlant->"Italic"]}]]}], 
       SubscriptBox[
        StyleBox["L",
         FontSlant->"Italic"], "1"]], ")"}], 
     RowBox[{"sin", "(", 
      FractionBox[
       RowBox[{
        SubscriptBox[
         StyleBox["n",
          FontSlant->"Italic"], "2"], 
        StyleBox[
         RowBox[{
          StyleBox["\[Pi]",
           FontSlant->"Plain"], 
          StyleBox["y",
           FontSlant->"Italic"]}]]}], 
       SubscriptBox[
        StyleBox["L",
         FontSlant->"Italic"], "2"]], ")"}]}]}], TraditionalForm]]],
 " with ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["n", "1"], ",", 
    SubscriptBox["n", "2"]}], TraditionalForm]]],
 " = 1, 2, 3..., and their energies are ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["E", 
     RowBox[{
      SubscriptBox["n", "1"], ",", 
      SubscriptBox["n", "2"]}]], "=", 
    RowBox[{
     FractionBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["n", "1"], "2"], 
       SuperscriptBox["h", "2"]}], 
      RowBox[{"8", 
       SuperscriptBox[
        SubscriptBox[
         StyleBox["mL",
          FontSlant->"Italic"], "1"], "2"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox[
        SubscriptBox["n", "2"], "2"], 
       SuperscriptBox["h", "2"]}], 
      RowBox[{"8", 
       SuperscriptBox[
        SubscriptBox[
         StyleBox["mL",
          FontSlant->"Italic"], "2"], "2"]}]]}]}], TraditionalForm]]],
 ". Below, the energy eignefunctions for which ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["n", "1"], "\[LessEqual]", "3"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["n", "2"], "\[LessEqual]", "3"}], TraditionalForm]]],
 " are plotted for a particle in a 2-D box. The dimensions of the box and the \
wavefunction of interest can be adjusted using the scroll bar. The green and \
red regions represent positive and negative signs of the wavefunctions.\n"
}], "Text"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`L1$$ = 2., $CellContext`L2$$ = 
    2., $CellContext`n1$$ = 1, $CellContext`n2$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`L1$$], 2, 3, 0.1}, {
      Hold[$CellContext`L2$$], 2, 3, 0.1}, {
      Hold[$CellContext`n1$$], 1, 3, 1}, {
      Hold[$CellContext`n2$$], 1, 3, 1}}, Typeset`size$$ = {
    575., {175., 180.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`L1$1531$$ = 
    0, $CellContext`L2$1532$$ = 0, $CellContext`n1$1533$$ = 
    0, $CellContext`n2$1534$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`L1$$ = 2, $CellContext`L2$$ = 
        2, $CellContext`n1$$ = 1, $CellContext`n2$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`L1$$, $CellContext`L1$1531$$, 0], 
        Hold[$CellContext`L2$$, $CellContext`L2$1532$$, 0], 
        Hold[$CellContext`n1$$, $CellContext`n1$1533$$, 0], 
        Hold[$CellContext`n2$$, $CellContext`n2$1534$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`test2D[$CellContext`L1$$, $CellContext`L2$$, \
$CellContext`n1$$, $CellContext`n2$$], 
      "Specifications" :> {{$CellContext`L1$$, 2, 3, 0.1}, {$CellContext`L2$$,
          2, 3, 0.1}, {$CellContext`n1$$, 1, 3, 1}, {$CellContext`n2$$, 1, 3, 
         1}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{620., {261., 266.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`test2D[
         Pattern[$CellContext`L1, 
          Blank[]], 
         Pattern[$CellContext`L2, 
          Blank[]], 
         Pattern[$CellContext`n1, 
          Blank[]], 
         Pattern[$CellContext`n2, 
          Blank[]]] := Show[
         DensityPlot[
         Sin[($CellContext`n1 
              Pi) (($CellContext`x - (3 - $CellContext`L1)/
               2)/$CellContext`L1)] (
            Sin[($CellContext`n2 
               Pi) (($CellContext`y + $CellContext`L2/2)/$CellContext`L2)]/
            2.001) + 0.5, {$CellContext`x, (3 - $CellContext`L1)/
           2, (3 + $CellContext`L1)/2}, {$CellContext`y, (-$CellContext`L2)/
           2, $CellContext`L2/2}, PlotRange -> {{-0.3, 7}, {-2.1, 2.1}}, 
          PlotPoints -> 40, AspectRatio -> Automatic, ImageSize -> 575, Frame -> 
          False, ColorFunction -> "RedGreenSplit", ColorFunctionScaling -> 
          False, PlotLabel -> 
          Style["\!\(\*SubscriptBox[\n StyleBox[\"L\",\n\
FontSlant->\"Italic\"], \"1\"]\)" == 
            NumberForm[$CellContext`L1, 2] 
             ", \!\(\*SubscriptBox[\n StyleBox[\"L\",\n\
FontSlant->\"Italic\"], \"2\"]\)" == 
            NumberForm[$CellContext`L2, 2] 
             ", \!\(\*SubscriptBox[\n StyleBox[\"n\",\n\
FontSlant->\"Italic\"], \"1\"]\)" == 
            NumberForm[$CellContext`n1, 2] 
             ", \!\(\*SubscriptBox[\n StyleBox[\"n\",\n\
FontSlant->\"Italic\"], \"2\"]\)" == NumberForm[$CellContext`n2, 2], Bold, 
            Black, 20]], 
         Graphics[{{
            Thickness[0.005], 
            Arrow[{{4.18, -1.3}, {4.18, 1.3}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{4.6, 2/(5 $CellContext`L1^2) + 2/(5 $CellContext`L2^2) - 
               1}, {5.1, 2/(5 $CellContext`L1^2) + 2/(5 $CellContext`L2^2) - 
               1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{4.6, 8/(5 $CellContext`L1^2) + 2/(5 $CellContext`L2^2) - 
               1}, {5.1, 8/(5 $CellContext`L1^2) + 2/(5 $CellContext`L2^2) - 
               1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{4.6, 18/(5 $CellContext`L1^2) + 2/(5 $CellContext`L2^2) - 
               1}, {5.1, 18/(5 $CellContext`L1^2) + 2/(5 $CellContext`L2^2) - 
               1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{5.5, 2/(5 $CellContext`L1^2) + 8/(5 $CellContext`L2^2) - 
               1}, {6., 2/(5 $CellContext`L1^2) + 8/(5 $CellContext`L2^2) - 
               1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{5.5, 8/(5 $CellContext`L1^2) + 8/(5 $CellContext`L2^2) - 
               1}, {6., 8/(5 $CellContext`L1^2) + 8/(5 $CellContext`L2^2) - 
               1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{5.5, 18/(5 $CellContext`L1^2) + 8/(5 $CellContext`L2^2) - 
               1}, {6., 18/(5 $CellContext`L1^2) + 8/(5 $CellContext`L2^2) - 
               1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{6.4, 2/(5 $CellContext`L1^2) + 18/(5 $CellContext`L2^2) - 
               1}, {6.9, 2/(5 $CellContext`L1^2) + 18/(5 $CellContext`L2^2) - 
               1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{6.4, 8/(5 $CellContext`L1^2) + 18/(5 $CellContext`L2^2) - 
               1}, {6.9, 8/(5 $CellContext`L1^2) + 18/(5 $CellContext`L2^2) - 
               1}}]}, {
            Thickness[0.005], Gray, 
            
            Line[{{6.4, 18/(5 $CellContext`L1^2) + 18/(5 $CellContext`L2^2) - 
               1}, {6.9, 18/(5 $CellContext`L1^2) + 18/(5 $CellContext`L2^2) - 
               1}}]}, {
            Thickness[0.01], Red, 
            
            Line[{{3.7 + 0.9 $CellContext`n2, 
               2 ($CellContext`n1^2/(5 $CellContext`L1^2)) + 
               2 ($CellContext`n2^2/(5 $CellContext`L2^2)) - 1}, {
              4.2 + 0.9 $CellContext`n2, 
               2 ($CellContext`n1^2/(5 $CellContext`L1^2)) + 
               2 ($CellContext`n2^2/(5 $CellContext`L2^2)) - 1}}]}, {Black, 
            Rectangle[{-0.2, -1.7}, {(3 - $CellContext`L1)/2, 1.7}]}, {
           Black, 
            Rectangle[{(3 + $CellContext`L1)/2, -1.7}, {3.2, 1.7}]}, {Black, 
            Rectangle[{-0.2, -1.7}, {3.2, (-$CellContext`L2)/2}]}, {Black, 
            Rectangle[{-0.2, $CellContext`L2/2}, {3.2, 1.7}]}, {
            Text[
             Style[$CellContext`Energy, 20], {3.95, 0}, Automatic, {0, 
             1}]}}]]}; Typeset`initDone$$ = True),
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
 StyleBox[" Find a general expression for the number of nodes in a 2-D \
wavefunction ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", 
     RowBox[{
      SubscriptBox["n", "1"], ",", 
      SubscriptBox["n", "2"]}]], "(", 
    RowBox[{"x", ",", "y"}], ")"}], TraditionalForm]]],
 StyleBox[" in terms of ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   SubscriptBox["n", "1"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["n", "2"], TraditionalForm]]],
 ". Recall that nodes are lines (other than the edges of the box) on which \
the value of the wavefunction is equal to zero.",
 StyleBox["\n\n",
  FontColor->GrayLevel[0]],
 StyleBox["Question 2.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" In the wavefunction corresponding to ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["n", "1"], "=", "3"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["n", "2"], "=", "3"}], TraditionalForm]]],
 ", how many points are there in the box at which the particle is most likely \
to be found? Where do those points lie relative to the nodes?\n\n",
 StyleBox["Question 2.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Under what conditions are there degeneracies in the wavefunctions \
(i.e., distinct wavefunctions with the same energy) of a particle in a 2-D \
box?",
  FontColor->GrayLevel[0]]
}], "Text"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{850, 1308},
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
Cell[1486, 35, 283, 9, 144, "Title"],
Cell[CellGroupData[{
Cell[1794, 48, 81, 3, 83, "Section"],
Cell[1878, 53, 2064, 57, 181, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3979, 115, 81, 3, 83, "Section"],
Cell[4063, 120, 1934, 65, 249, "Text"],
Cell[6000, 187, 4173, 87, 512, "Input"],
Cell[10176, 276, 637, 14, 106, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10850, 295, 81, 3, 83, "Section"],
Cell[10934, 300, 2857, 103, 156, "Text"],
Cell[13794, 405, 6826, 142, 544, "Input"],
Cell[20623, 549, 1667, 51, 191, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature FvpO9AwUp0eKdB1KmP60ed@g *)
