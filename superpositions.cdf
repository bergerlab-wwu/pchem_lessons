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
NotebookDataLength[     49173,       1088]
NotebookOptionsPosition[     49388,       1071]
NotebookOutlinePosition[     49839,       1091]
CellTagsIndexPosition[     49796,       1088]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 StyleBox["Measurement and Superpositions\n",
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
 "This lesson aims to strengthen our intuition and understanding of some \
surprising features of quantum mechanics: the probabilistic nature of \
measurement, the effect of measurement on an object itself, and the \
impossibility of knowing the values of certain properties at the same time. \
To illustrate these ideas, we will focus on the wavefunction of a particle in \
a 1-dimensional (1-D) box. It\[CloseCurlyQuote]s not necessary to know the \
particle in a box model for this lesson, but more information about it can be \
found in the Particle in a Box primer.\n\nFor a particle of mass ",
 StyleBox["m",
  FontSlant->"Italic"],
 " in a 1-D box of length ",
 StyleBox["L",
  FontSlant->"Italic"],
 " with boundaries ",
 StyleBox["x",
  FontSlant->"Italic"],
 " = 0 and ",
 StyleBox["L",
  FontSlant->"Italic"],
 ", recall that the eigenfunctions of the energy (Hamiltonian) operator are \
",
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
 " = 1, 2, 3..., and the corresponding eigenvalues are ",
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
 StyleBox[" For a particle in a 1-D box (or any other system), what do ",
  FontColor->GrayLevel[0]],
 StyleBox["eigenfunctions of the position operator",
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[" look like? (Hint: Don\[CloseCurlyQuote]t overthink it. Remember, \
an eigenfunction of a certain property is a state for which we know the value \
of that property with 100% certainty.)\n\n",
  FontColor->GrayLevel[0]],
 StyleBox["Question 1.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" ",
  FontColor->GrayLevel[0]],
 "If a particle in a 1-D box is in an energy eigenfunction ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", "n"], "(", "x", ")"}], TraditionalForm]]],
 ", what is the result when its ",
 StyleBox["energy",
  FontWeight->"Bold"],
 " is measured? If this experiment is conducted 10 times, is the measured \
energy the same every time, or are there a variety of possible outcomes? What \
happens to the wavefunction when this measurement is taken?\n\n",
 StyleBox["Question 1.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" ",
  FontColor->GrayLevel[0]],
 "If a particle in a 1-D box is in an energy eigenfunction ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", "n"], "(", "x", ")"}], TraditionalForm]]],
 ", what is the result when its ",
 StyleBox["position",
  FontWeight->"Bold"],
 " is measured? If this experiment is conducted 10 times, is the measured \
position the same every time, or are there a variety of possible outcomes? \
What happens to the wavefunction when this measurement is taken?"
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Simulating energy measurements of various wavefunctions",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "In the simulation below, you can set the wavefunction of a particle in a \
1-D box, analyze the possible outcomes when its energy or position is \
measured, and perform an energy measurement. The scroll bars control the \
weight of the first 15 energy eigenfunctions (",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Psi]", "1"], TraditionalForm]]],
 " through ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Psi]", "15"], TraditionalForm]]],
 ") in the total wavefunction. All of the scroll bars start at zero; move \
them to the left (negative) or right (positive) to add a component of a \
particular energy eigenfunction. The total wavefunction shown in the \
simulation is normalized. The buttons at the bottom of the simulation \
generate a random wavefunction, reset the wavefunction to zero, and measure \
the energy of the wavefunction. Take some time to explore the simulation by \
manipulating the wavefunction and taking energy measurements of various types \
of wavefunctions. Then, answer the questions that follow.\n"
}], "Text"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`\[Psi]1$$ = 0, $CellContext`\[Psi]10$$ = 
    0, $CellContext`\[Psi]11$$ = 0, $CellContext`\[Psi]12$$ = 
    0, $CellContext`\[Psi]13$$ = 0, $CellContext`\[Psi]14$$ = 
    0, $CellContext`\[Psi]15$$ = 0, $CellContext`\[Psi]2$$ = 
    0, $CellContext`\[Psi]3$$ = 0, $CellContext`\[Psi]4$$ = 
    0, $CellContext`\[Psi]5$$ = 0, $CellContext`\[Psi]6$$ = 
    0, $CellContext`\[Psi]7$$ = 0, $CellContext`\[Psi]8$$ = 
    0, $CellContext`\[Psi]9$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`\[Psi]1$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]2$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]3$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]4$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]5$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]6$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]7$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]8$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]9$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]10$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]11$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]12$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]13$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]14$$], 0}, -1, 1, 0.25}, {{
       Hold[$CellContext`\[Psi]15$$], 0}, -1, 1, 0.25}, {
      Hold[
       Button[
       "Random wavefunction", $CellContext`\[Psi]1$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]2$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]3$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]4$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]5$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]6$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]7$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]8$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]9$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]10$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]11$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]12$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]13$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]14$$ = 
         RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]15$$ = 
         RandomInteger[{1, 9}]/4 - 1.25]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button[
       "Reset wavefunction", $CellContext`\[Psi]1$$ = 
         0; $CellContext`\[Psi]2$$ = 0; $CellContext`\[Psi]3$$ = 
         0; $CellContext`\[Psi]4$$ = 0; $CellContext`\[Psi]5$$ = 
         0; $CellContext`\[Psi]6$$ = 0; $CellContext`\[Psi]7$$ = 
         0; $CellContext`\[Psi]8$$ = 0; $CellContext`\[Psi]9$$ = 
         0; $CellContext`\[Psi]10$$ = 0; $CellContext`\[Psi]11$$ = 
         0; $CellContext`\[Psi]12$$ = 0; $CellContext`\[Psi]13$$ = 
         0; $CellContext`\[Psi]14$$ = 0; $CellContext`\[Psi]15$$ = 0]], 
      Manipulate`Dump`ThisIsNotAControl}, {
      Hold[
       Button["Measure energy", If[
          
          And[$CellContext`\[Psi]1$$ == 0, $CellContext`\[Psi]2$$ == 
           0, $CellContext`\[Psi]3$$ == 0, $CellContext`\[Psi]4$$ == 
           0, $CellContext`\[Psi]5$$ == 0, $CellContext`\[Psi]6$$ == 
           0, $CellContext`\[Psi]7$$ == 0, $CellContext`\[Psi]8$$ == 
           0, $CellContext`\[Psi]9$$ == 0, $CellContext`\[Psi]10$$ == 
           0, $CellContext`\[Psi]11$$ == 0, $CellContext`\[Psi]12$$ == 
           0, $CellContext`\[Psi]13$$ == 0, $CellContext`\[Psi]14$$ == 
           0, $CellContext`\[Psi]15$$ == 0], $CellContext`a = 
          0, $CellContext`a = 
          RandomChoice[{$CellContext`\[Psi]1$$^2, $CellContext`\[Psi]2$$^2, \
$CellContext`\[Psi]3$$^2, $CellContext`\[Psi]4$$^2, $CellContext`\[Psi]5$$^2, \
$CellContext`\[Psi]6$$^2, $CellContext`\[Psi]7$$^2, $CellContext`\[Psi]8$$^2, \
$CellContext`\[Psi]9$$^2, $CellContext`\[Psi]10$$^2, \
$CellContext`\[Psi]11$$^2, $CellContext`\[Psi]12$$^2, \
$CellContext`\[Psi]13$$^2, $CellContext`\[Psi]14$$^2, \
$CellContext`\[Psi]15$$^2} -> {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
             15}]]; $CellContext`\[Psi]1$$ = 
         If[$CellContext`a == 1, 1, 0]; $CellContext`\[Psi]2$$ = 
         If[$CellContext`a == 2, 1, 0]; $CellContext`\[Psi]3$$ = 
         If[$CellContext`a == 3, 1, 0]; $CellContext`\[Psi]4$$ = 
         If[$CellContext`a == 4, 1, 0]; $CellContext`\[Psi]5$$ = 
         If[$CellContext`a == 5, 1, 0]; $CellContext`\[Psi]6$$ = 
         If[$CellContext`a == 6, 1, 0]; $CellContext`\[Psi]7$$ = 
         If[$CellContext`a == 7, 1, 0]; $CellContext`\[Psi]8$$ = 
         If[$CellContext`a == 8, 1, 0]; $CellContext`\[Psi]9$$ = 
         If[$CellContext`a == 9, 1, 0]; $CellContext`\[Psi]10$$ = 
         If[$CellContext`a == 10, 1, 0]; $CellContext`\[Psi]11$$ = 
         If[$CellContext`a == 11, 1, 0]; $CellContext`\[Psi]12$$ = 
         If[$CellContext`a == 12, 1, 0]; $CellContext`\[Psi]13$$ = 
         If[$CellContext`a == 13, 1, 0]; $CellContext`\[Psi]14$$ = 
         If[$CellContext`a == 14, 1, 0]; $CellContext`\[Psi]15$$ = 
         If[$CellContext`a == 15, 1, 0]]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    500., {248., 252.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`\[Psi]1$1539$$ = 
    0, $CellContext`\[Psi]2$1540$$ = 0, $CellContext`\[Psi]3$1541$$ = 
    0, $CellContext`\[Psi]4$1542$$ = 0, $CellContext`\[Psi]5$1543$$ = 
    0, $CellContext`\[Psi]6$1544$$ = 0, $CellContext`\[Psi]7$1545$$ = 
    0, $CellContext`\[Psi]8$1546$$ = 0, $CellContext`\[Psi]9$1547$$ = 
    0, $CellContext`\[Psi]10$1548$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`\[Psi]1$$ = 0, $CellContext`\[Psi]10$$ = 
        0, $CellContext`\[Psi]11$$ = 0, $CellContext`\[Psi]12$$ = 
        0, $CellContext`\[Psi]13$$ = 0, $CellContext`\[Psi]14$$ = 
        0, $CellContext`\[Psi]15$$ = 0, $CellContext`\[Psi]2$$ = 
        0, $CellContext`\[Psi]3$$ = 0, $CellContext`\[Psi]4$$ = 
        0, $CellContext`\[Psi]5$$ = 0, $CellContext`\[Psi]6$$ = 
        0, $CellContext`\[Psi]7$$ = 0, $CellContext`\[Psi]8$$ = 
        0, $CellContext`\[Psi]9$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`\[Psi]1$$, $CellContext`\[Psi]1$1539$$, 0], 
        Hold[$CellContext`\[Psi]2$$, $CellContext`\[Psi]2$1540$$, 0], 
        Hold[$CellContext`\[Psi]3$$, $CellContext`\[Psi]3$1541$$, 0], 
        Hold[$CellContext`\[Psi]4$$, $CellContext`\[Psi]4$1542$$, 0], 
        Hold[$CellContext`\[Psi]5$$, $CellContext`\[Psi]5$1543$$, 0], 
        Hold[$CellContext`\[Psi]6$$, $CellContext`\[Psi]6$1544$$, 0], 
        Hold[$CellContext`\[Psi]7$$, $CellContext`\[Psi]7$1545$$, 0], 
        Hold[$CellContext`\[Psi]8$$, $CellContext`\[Psi]8$1546$$, 0], 
        Hold[$CellContext`\[Psi]9$$, $CellContext`\[Psi]9$1547$$, 0], 
        Hold[$CellContext`\[Psi]10$$, $CellContext`\[Psi]10$1548$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`testplot[$CellContext`\[Psi]1$$, $CellContext`\
\[Psi]2$$, $CellContext`\[Psi]3$$, $CellContext`\[Psi]4$$, \
$CellContext`\[Psi]5$$, $CellContext`\[Psi]6$$, $CellContext`\[Psi]7$$, \
$CellContext`\[Psi]8$$, $CellContext`\[Psi]9$$, $CellContext`\[Psi]10$$, \
$CellContext`\[Psi]11$$, $CellContext`\[Psi]12$$, $CellContext`\[Psi]13$$, \
$CellContext`\[Psi]14$$, $CellContext`\[Psi]15$$], 
      "Specifications" :> {{{$CellContext`\[Psi]1$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]2$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]3$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]4$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]5$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]6$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]7$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]8$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]9$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]10$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]11$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]12$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]13$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]14$$, 0}, -1, 1, 
         0.25}, {{$CellContext`\[Psi]15$$, 0}, -1, 1, 0.25}, 
        Button[
        "Random wavefunction", $CellContext`\[Psi]1$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]2$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]3$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]4$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]5$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]6$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]7$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]8$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]9$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]10$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]11$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]12$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]13$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]14$$ = 
          RandomInteger[{1, 9}]/4 - 1.25; $CellContext`\[Psi]15$$ = 
          RandomInteger[{1, 9}]/4 - 1.25], 
        Button[
        "Reset wavefunction", $CellContext`\[Psi]1$$ = 
          0; $CellContext`\[Psi]2$$ = 0; $CellContext`\[Psi]3$$ = 
          0; $CellContext`\[Psi]4$$ = 0; $CellContext`\[Psi]5$$ = 
          0; $CellContext`\[Psi]6$$ = 0; $CellContext`\[Psi]7$$ = 
          0; $CellContext`\[Psi]8$$ = 0; $CellContext`\[Psi]9$$ = 
          0; $CellContext`\[Psi]10$$ = 0; $CellContext`\[Psi]11$$ = 
          0; $CellContext`\[Psi]12$$ = 0; $CellContext`\[Psi]13$$ = 
          0; $CellContext`\[Psi]14$$ = 0; $CellContext`\[Psi]15$$ = 0], 
        Button["Measure energy", If[
           
           And[$CellContext`\[Psi]1$$ == 0, $CellContext`\[Psi]2$$ == 
            0, $CellContext`\[Psi]3$$ == 0, $CellContext`\[Psi]4$$ == 
            0, $CellContext`\[Psi]5$$ == 0, $CellContext`\[Psi]6$$ == 
            0, $CellContext`\[Psi]7$$ == 0, $CellContext`\[Psi]8$$ == 
            0, $CellContext`\[Psi]9$$ == 0, $CellContext`\[Psi]10$$ == 
            0, $CellContext`\[Psi]11$$ == 0, $CellContext`\[Psi]12$$ == 
            0, $CellContext`\[Psi]13$$ == 0, $CellContext`\[Psi]14$$ == 
            0, $CellContext`\[Psi]15$$ == 0], $CellContext`a = 
           0, $CellContext`a = 
           RandomChoice[{$CellContext`\[Psi]1$$^2, $CellContext`\[Psi]2$$^2, \
$CellContext`\[Psi]3$$^2, $CellContext`\[Psi]4$$^2, $CellContext`\[Psi]5$$^2, \
$CellContext`\[Psi]6$$^2, $CellContext`\[Psi]7$$^2, $CellContext`\[Psi]8$$^2, \
$CellContext`\[Psi]9$$^2, $CellContext`\[Psi]10$$^2, \
$CellContext`\[Psi]11$$^2, $CellContext`\[Psi]12$$^2, \
$CellContext`\[Psi]13$$^2, $CellContext`\[Psi]14$$^2, \
$CellContext`\[Psi]15$$^2} -> {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
              15}]]; $CellContext`\[Psi]1$$ = 
          If[$CellContext`a == 1, 1, 0]; $CellContext`\[Psi]2$$ = 
          If[$CellContext`a == 2, 1, 0]; $CellContext`\[Psi]3$$ = 
          If[$CellContext`a == 3, 1, 0]; $CellContext`\[Psi]4$$ = 
          If[$CellContext`a == 4, 1, 0]; $CellContext`\[Psi]5$$ = 
          If[$CellContext`a == 5, 1, 0]; $CellContext`\[Psi]6$$ = 
          If[$CellContext`a == 6, 1, 0]; $CellContext`\[Psi]7$$ = 
          If[$CellContext`a == 7, 1, 0]; $CellContext`\[Psi]8$$ = 
          If[$CellContext`a == 8, 1, 0]; $CellContext`\[Psi]9$$ = 
          If[$CellContext`a == 9, 1, 0]; $CellContext`\[Psi]10$$ = 
          If[$CellContext`a == 10, 1, 0]; $CellContext`\[Psi]11$$ = 
          If[$CellContext`a == 11, 1, 0]; $CellContext`\[Psi]12$$ = 
          If[$CellContext`a == 12, 1, 0]; $CellContext`\[Psi]13$$ = 
          If[$CellContext`a == 13, 1, 0]; $CellContext`\[Psi]14$$ = 
          If[$CellContext`a == 14, 1, 0]; $CellContext`\[Psi]15$$ = 
          If[$CellContext`a == 15, 1, 0]]}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{781., {276., 281.}},
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
             1}]}}]], $CellContext`testplot[
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
         0.85, ImageSize -> 575], $CellContext`testplot[
         Pattern[$CellContext`\[Psi]1, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]2, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]3, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]4, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]5, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]6, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]7, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]8, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]9, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]10, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]11, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]12, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]13, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]14, 
          Blank[]], 
         Pattern[$CellContext`\[Psi]15, 
          Blank[]]] := If[
         And[$CellContext`\[Psi]1 == 0, $CellContext`\[Psi]2 == 
          0, $CellContext`\[Psi]3 == 0, $CellContext`\[Psi]4 == 
          0, $CellContext`\[Psi]5 == 0, $CellContext`\[Psi]6 == 
          0, $CellContext`\[Psi]7 == 0, $CellContext`\[Psi]8 == 
          0, $CellContext`\[Psi]9 == 0, $CellContext`\[Psi]10 == 
          0, $CellContext`\[Psi]11 == 0, $CellContext`\[Psi]12 == 
          0, $CellContext`\[Psi]13 == 0, $CellContext`\[Psi]14 == 
          0, $CellContext`\[Psi]15 == 0], 
         Show[
          Graphics[
           Text[
            Style[
            "The wavefunction is currently set to zero.\nMove the sliders to \
the right (positive) or\nleft (negative) to input nonzero components.", 18]]],
           ImageSize -> 500], 
         Show[
          
          Plot[{0.8 (($CellContext`\[Psi]1 
               Sin[Pi $CellContext`x] + $CellContext`\[Psi]2 
               Sin[(2 Pi) $CellContext`x] + $CellContext`\[Psi]3 
               Sin[(3 Pi) $CellContext`x] + $CellContext`\[Psi]4 
               Sin[(4 Pi) $CellContext`x] + $CellContext`\[Psi]5 
               Sin[(5 Pi) $CellContext`x] + $CellContext`\[Psi]6 
               Sin[(6 Pi) $CellContext`x] + $CellContext`\[Psi]7 
               Sin[(7 Pi) $CellContext`x] + $CellContext`\[Psi]8 
               Sin[(8 Pi) $CellContext`x] + $CellContext`\[Psi]9 
               Sin[(9 Pi) $CellContext`x] + $CellContext`\[Psi]10 
               Sin[(10 Pi) $CellContext`x] + $CellContext`\[Psi]11 
               Sin[(11 Pi) $CellContext`x] + $CellContext`\[Psi]12 
               Sin[(12 Pi) $CellContext`x] + $CellContext`\[Psi]13 
               Sin[(13 Pi) $CellContext`x] + $CellContext`\[Psi]14 
               Sin[(14 Pi) $CellContext`x] + $CellContext`\[Psi]15 
               Sin[(15 Pi) $CellContext`x])/
             Sqrt[$CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2])}, {$CellContext`x, 0, 1}, PlotStyle -> {
             Thickness[0.007], Blue}, Filling -> 0, 
           PlotRange -> {{-0.1, 2}, {-7, 3}}, AspectRatio -> 1], 
          
          Plot[{(($CellContext`\[Psi]1 
                 Sin[Pi $CellContext`x] + $CellContext`\[Psi]2 
                 Sin[(2 Pi) $CellContext`x] + $CellContext`\[Psi]3 
                 Sin[(3 Pi) $CellContext`x] + $CellContext`\[Psi]4 
                 Sin[(4 Pi) $CellContext`x] + $CellContext`\[Psi]5 
                 Sin[(5 Pi) $CellContext`x] + $CellContext`\[Psi]6 
                 Sin[(6 Pi) $CellContext`x] + $CellContext`\[Psi]7 
                 Sin[(7 Pi) $CellContext`x] + $CellContext`\[Psi]8 
                 Sin[(8 Pi) $CellContext`x] + $CellContext`\[Psi]9 
                 Sin[(9 Pi) $CellContext`x] + $CellContext`\[Psi]10 
                 Sin[(10 Pi) $CellContext`x] + $CellContext`\[Psi]11 
                 Sin[(11 Pi) $CellContext`x] + $CellContext`\[Psi]12 
                 Sin[(12 Pi) $CellContext`x] + $CellContext`\[Psi]13 
                 Sin[(13 Pi) $CellContext`x] + $CellContext`\[Psi]14 
                 Sin[(14 Pi) $CellContext`x] + $CellContext`\[Psi]15 
                 Sin[(15 Pi) $CellContext`x])/
               Sqrt[$CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2])^2/2 - 5}, {$CellContext`x, 0, 1}, PlotStyle -> {
             Thickness[0.007], Purple}, Filling -> -5, 
           PlotRange -> {{-0.1, 2}, {-7, 3}}, AspectRatio -> 1], 
          Graphics[
           Rectangle[{-0.1, -6}, {0., 2}]], 
          Graphics[
           Rectangle[{1., -6}, {1.1, 2}]], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6}, {$CellContext`\[Psi]1^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               0.2^2}, {$CellContext`\[Psi]2^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 0.2^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               0.4^2}, {$CellContext`\[Psi]3^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 0.4^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               0.6^2}, {$CellContext`\[Psi]4^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 0.6^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               0.8^2}, {$CellContext`\[Psi]5^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 0.8^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               1.^2}, {$CellContext`\[Psi]6^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 1.^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               1.2^2}, {$CellContext`\[Psi]7^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 1.2^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               1.4^2}, {$CellContext`\[Psi]8^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 1.4^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               1.6^2}, {$CellContext`\[Psi]9^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 1.6^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               1.8^2}, {$CellContext`\[Psi]10^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 1.8^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               2.^2}, {$CellContext`\[Psi]11^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 2.^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               2.2^2}, {$CellContext`\[Psi]12^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 2.2^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               2.4^2}, {$CellContext`\[Psi]13^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 2.4^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               2.6^2}, {$CellContext`\[Psi]14^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 2.6^2}}]}], 
          Graphics[{
            Thickness[0.007], 
            
            Line[{{1.5, -6 + 
               2.8^2}, {$CellContext`\[Psi]15^2 (
                 2^(-1)/($CellContext`\[Psi]1^2 + $CellContext`\[Psi]2^2 + \
$CellContext`\[Psi]3^2 + $CellContext`\[Psi]4^2 + $CellContext`\[Psi]5^2 + \
$CellContext`\[Psi]6^2 + $CellContext`\[Psi]7^2 + $CellContext`\[Psi]8^2 + \
$CellContext`\[Psi]9^2 + $CellContext`\[Psi]10^2 + $CellContext`\[Psi]11^2 + \
$CellContext`\[Psi]12^2 + $CellContext`\[Psi]13^2 + $CellContext`\[Psi]14^2 + \
$CellContext`\[Psi]15^2)) + 1.5, -6 + 2.8^2}}]}], 
          Graphics[{{
             Thickness[0.007], 
             Arrow[{{1.5, -6}, {1.5, 2.3}}]}, {
             Text[
              Style[$CellContext`Energy, 20], {1.43, -2.}, Automatic, {0, 
              1}]}, {
             Text[
              Style[Probability, 20], {1.75, -6.7}, Automatic, {1, 0}]}, {
             Text[
              Style[0, 20], {1.51, -6.3}, Automatic, {1, 0}]}, {
             Text[
              Style[1, 20], {1.99, -6.3}, Automatic, {1, 0}]}, {
             Text[
              Style[
              "Wavefunction\n\[Psi](\!\(\*\nStyleBox[\"x\",\n\
FontSlant->\"Italic\"]\))", Bold, 20], {0.5, 1.9}, Automatic, {1, 0}]}, {
             Text[
              Style[
              "Positional probability\n\!\(\*SuperscriptBox[\(\[Psi]\), \
\(2\)]\)(\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\))", Bold, 20], {
              0.5, -3.1}, Automatic, {1, 0}]}, {
             Text[
              Style[Position, 20], {0.5, -6.7}, Automatic, {1, 0}]}, {
             Text[
              Style[0, 20], {0.01, -6.3}, Automatic, {1, 0}]}, {
             Text[
              Style[$CellContext`L, 20], {0.99, -6.3}, Automatic, {1, 0}]}}], 
          Axes -> False, ImageSize -> 500]]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"],

Cell[TextData[{
 "All parts of Question 2 refer to the ",
 StyleBox["energy eigenfunction ",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", "9"], "(", "x", ")"}], TraditionalForm]],
  FontWeight->"Bold"],
 ". To prepare this wavefunction, move the scroll bar labeled \
\[OpenCurlyDoubleQuote]",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", "9"], "(", "x", ")"}], TraditionalForm]]],
 "\[CloseCurlyDoubleQuote] all the way to the right, and leave all the other \
bars at zero (in the middle).",
 StyleBox["\n\nQuestion 2.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Measure the energy of a particle in energy eigenfunction ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", "9"], "(", "x", ")"}], TraditionalForm]]],
 " 10 times. Is the measured energy the same every time, or are there a \
variety of possible outcomes? If the measured energy is the same every time, \
what is its value? If there are a variety of possible outcomes, what are the \
possible values and their corresponding probabilities?\n\n",
 StyleBox["Question 2.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" What happens to the appearance of the wavefunction when the \
energy is measured? Explain in words why this is to be expected.",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 2.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" For a particle in energy eigenfunction ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", "9"], "(", "x", ")"}], TraditionalForm]]],
 StyleBox[", qualitatively describe how much you know about the particle\
\[CloseCurlyQuote]s ",
  FontColor->GrayLevel[0]],
 StyleBox["energy",
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[". (A descriptive answer, such as \[OpenCurlyDoubleQuote]I know the \
energy exactly\[CloseCurlyDoubleQuote] or \[OpenCurlyDoubleQuote]I know very \
little about the energy\[CloseCurlyDoubleQuote], is appropriate here.) \
Describe how much you know about the particle\[CloseCurlyQuote]s ",
  FontColor->GrayLevel[0]],
 StyleBox["position",
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[".\n\n",
  FontColor->GrayLevel[0]],
 "All parts of Question 3 refer to a ",
 StyleBox["superposition of energy eigenfunctions, ",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox[
   RowBox[{
    SqrtBox[
     FractionBox["1", "3"]], 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubscriptBox["\[Psi]", "5"], "(", "x", ")"}], "-", 
      RowBox[{
       SubscriptBox["\[Psi]", "8"], "(", "x", ")"}], "+", 
      RowBox[{
       SubscriptBox["\[Psi]", "11"], "(", "x", ")"}]}], ")"}]}], 
   TraditionalForm]],
  FontWeight->"Bold"],
 ". To prepare this wavefunction, move the scroll bars labeled \
\[OpenCurlyDoubleQuote]",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", "5"], "(", "x", ")"}], TraditionalForm]]],
 "\[CloseCurlyDoubleQuote] and \[OpenCurlyDoubleQuote]",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", "11"], "(", "x", ")"}], TraditionalForm]]],
 "\[CloseCurlyDoubleQuote] all the way to the right, and the bar labeled \
\[OpenCurlyDoubleQuote]",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Psi]", "8"], "(", "x", ")"}], TraditionalForm]]],
 "\[CloseCurlyDoubleQuote] all the way to the left.",
 StyleBox["\n\nQuestion 3.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Measure the energy of a particle in this superposition ",
  FontColor->GrayLevel[0]],
 "10 times, preparing the same superposition before each measurement. Is the \
measured energy the same every time, or are there a variety of possible \
outcomes? If the measured energy is the same every time, what is its value? \
If there are a variety of possible outcomes, what are the possible values and \
their corresponding probabilities?\n\n",
 StyleBox["Question 3.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" What happens to the appearance of the wavefunction when the \
energy is measured? Explain in words why this is to be expected.",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 3.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Measure the energy of a particle in this superposition once, and \
then measure it again ",
  FontColor->GrayLevel[0]],
 StyleBox["without",
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[" preparing the original superposition before the second \
measurement. What must be true of the second measurement? Explain in words \
why this is to be expected.\n\n",
  FontColor->GrayLevel[0]],
 "All parts of Question 4 refer to a ",
 StyleBox["superposition of energy eigenfunctions, ",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox[
   RowBox[{
    SqrtBox[
     FractionBox["1", "15"]], 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         SubscriptBox["\[Psi]", "1"], "(", "x", ")"}], "+", 
        RowBox[{
         SubscriptBox["\[Psi]", "2"], "(", "x", ")"}], "+", 
        RowBox[{
         SubscriptBox["\[Psi]", "3"], "(", "x", ")"}], "+"}], "..."}], "+", 
      RowBox[{
       SubscriptBox["\[Psi]", "15"], "(", "x", ")"}]}], ")"}]}], 
   TraditionalForm]],
  FontWeight->"Bold"],
 ". To prepare this wavefunction, move all of the scroll bars all the way to \
the right.",
 StyleBox["\n\nQuestion 4.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" For a particle in this superposition, qualitatively describe how \
much you know about the particle\[CloseCurlyQuote]s ",
  FontColor->GrayLevel[0]],
 StyleBox["energy",
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[". (A descriptive answer, such as \[OpenCurlyDoubleQuote]I know the \
energy exactly\[CloseCurlyDoubleQuote] or \[OpenCurlyDoubleQuote]I know very \
little about the energy\[CloseCurlyDoubleQuote], is appropriate here.) \
Describe how much you know about the particle\[CloseCurlyQuote]s ",
  FontColor->GrayLevel[0]],
 StyleBox["position",
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[".",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 4.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" What happens to the appearance of the wavefunction when the \
energy is measured? Explain in words why this is to be expected.",
  FontColor->GrayLevel[0]],
 "\n\n",
 StyleBox["Question 4.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" ",
  FontColor->GrayLevel[0]],
 StyleBox["After measuring the energy of the particle",
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[", qualitatively describe how much you know about the particle\
\[CloseCurlyQuote]s ",
  FontColor->GrayLevel[0]],
 StyleBox["energy",
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[". Describe how much you know about the particle\[CloseCurlyQuote]s \
",
  FontColor->GrayLevel[0]],
 StyleBox["position",
  FontWeight->"Bold",
  FontColor->GrayLevel[0]],
 StyleBox[". Comment in general about how much one can simultaneously know \
about the energy and position of a particle in a box.",
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
Cell[1486, 35, 249, 7, 144, "Title"],
Cell[CellGroupData[{
Cell[1760, 46, 77, 3, 83, "Section"],
Cell[1840, 51, 3609, 103, 422, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5486, 159, 114, 3, 83, "Section"],
Cell[5603, 164, 1061, 20, 165, "Text"],
Cell[6667, 186, 35242, 677, 574, "Output"],
Cell[41912, 865, 7448, 202, 896, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 7vppHqWrFLAMTDK4skmog1P6 *)
