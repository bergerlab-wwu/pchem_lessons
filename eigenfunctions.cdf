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
NotebookDataLength[     17135,        534]
NotebookOptionsPosition[     17157,        511]
NotebookOutlinePosition[     17608,        531]
CellTagsIndexPosition[     17565,        528]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 StyleBox["Operators and Eigenfunctions",
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
 "Defining the Hamiltonian operator for a particle in free space",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "In this illustration, the operator we will work with is the Hamiltonian \
(i.e., energy) operator ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["H", "^"], TraditionalForm]]],
 " for a particle in 1-dimensional (1-D) free space. In general, a 1-D \
Hamiltonian operator has the form ",
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
 ". In free space, the potential energy operator ",
 Cell[BoxData[
  FormBox[
   RowBox[{"V", "(", "x", ")"}], TraditionalForm]]],
 " has a constant value, which we can define to be zero (potential energy is \
all relative, anyway). Let\[CloseCurlyQuote]s assume for simplicity that we \
are working in units where ",
 StyleBox["m",
  FontSlant->"Italic"],
 " and \[HBar] are both equal to one (these are called \
\[OpenCurlyDoubleQuote]atomic units\[CloseCurlyDoubleQuote]). ",
 StyleBox["This means our Hamiltonian operator in 1-D free space can be \
written as ",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox[
       StyleBox["dx",
        FontSlant->"Italic"], "2"]]}]}], TraditionalForm]],
  FontWeight->"Bold"],
 StyleBox[".",
  FontWeight->"Bold"]
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Example of a non-eigenfunction",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "Let\[CloseCurlyQuote]s first look at a set of functions that are ",
 StyleBox["not eigenfunctions",
  FontWeight->"Bold"],
 " of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox[
       StyleBox["dx",
        FontSlant->"Italic"], "2"]]}]}], TraditionalForm]]],
 ": the Gaussian functions, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Psi]", "(", "x", ")"}], "=", 
    SuperscriptBox["e", 
     RowBox[{"-", 
      SuperscriptBox[
       StyleBox["ax",
        FontSlant->"Italic"], "2"]}]]}], TraditionalForm]]],
 ".\n\n",
 StyleBox["Question 1.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Show that the Gaussian functions ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Psi]", "(", "x", ")"}], "=", 
    SuperscriptBox["e", 
     RowBox[{"-", 
      SuperscriptBox[
       StyleBox["ax",
        FontSlant->"Italic"], "2"]}]]}], TraditionalForm]],
  FontWeight->"Plain",
  FontColor->GrayLevel[0]],
 StyleBox[" are not eigenfunctions of the free-space Hamiltonian operator ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox[
       StyleBox["dx",
        FontSlant->"Italic"], "2"]]}]}], TraditionalForm]],
  FontWeight->"Plain",
  FontColor->GrayLevel[0]],
 StyleBox[".\n\n",
  FontColor->GrayLevel[0]],
 "Below, a series of Gaussian functions ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Psi]", "(", "x", ")"}], "=", 
    SuperscriptBox["e", 
     RowBox[{"-", 
      SuperscriptBox[
       StyleBox["ax",
        FontSlant->"Italic"], "2"]}]]}], TraditionalForm]]],
 " are plotted for different values of ",
 StyleBox["a",
  FontSlant->"Italic"],
 ", along with the corresponding functions ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "\[Psi]"}], TraditionalForm]]],
 ". Take a look at these plots, using the scroll bar to adjust the value of \
",
 StyleBox["a",
  FontSlant->"Italic"],
 ". Note that the meaning of the axes in this type of representation can be a \
bit confusing. The horizontal axis refers to the location in space (",
 StyleBox["x",
  FontSlant->"Italic"],
 "), while the vertical axis shows the values of ",
 Cell[BoxData[
  FormBox["\[Psi]", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "\[Psi]"}], TraditionalForm]]],
 " at that location.\n"
}], "Text"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 0.3, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`a$$], 0.3, 2.5, 0.01}}, Typeset`size$$ = {
    592., {265., 269.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`a$44326$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`a$$ = 0.3}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$44326$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`gaussian[$CellContext`a$$], 
      "Specifications" :> {{$CellContext`a$$, 0.3, 2.5, 0.01}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{637., {309., 314.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`gaussian[
         Pattern[$CellContext`a, 
          Blank[]]] := 
       Plot[{E^((-$CellContext`a) $CellContext`x^2), ($CellContext`a - (
            2 $CellContext`a^2) $CellContext`x^2)/
          E^($CellContext`a $CellContext`x^2)}, {$CellContext`x, -5, 5}, 
         PlotRange -> {-1.75, 3.25}, PlotStyle -> {{Orange, 
            Thickness[0.01]}, {Purple, 
            Thickness[0.01]}}, AspectRatio -> 1, ImageSize -> 500, 
         PlotLegends -> {
          "\[Psi](\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\))", 
           "\!\(\*OverscriptBox[\(H\), \(^\)]\)\[Psi]"}, LabelStyle -> 
         Directive[Black, Bold, 20], AxesStyle -> {{
            Thickness[0.006], Black}, {
            Thickness[0.006], Black}}, 
         Ticks -> {{{-4, -4, 0.02}, {-2, -2, 0.02}, {0, 0, 0.02}, {
            2, 2, 0.02}, {4, 4, 0.02}}, {{-1, -1, 0.02}, {0, 0, 0.02}, {
            1, 1, 0.02}, {2, 2, 0.02}, {3, 3, 0.02}}}, TicksStyle -> Black, 
         PlotLabel -> Style[
           HoldForm[
           "\[Psi](\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)) =" 
            Superscript[$CellContext`e, (-$CellContext`a) $CellContext`x^2]], 
           Bold, Black, 24]], 
       Attributes[Superscript] = {NHoldRest, ReadProtected}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"],

Cell[TextData[{
 StyleBox["Question 1.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Describe how you can see in these plots that the Gaussian \
functions ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Psi]", "(", "x", ")"}], "=", 
    SuperscriptBox["e", 
     RowBox[{"-", 
      SuperscriptBox[
       StyleBox["ax",
        FontSlant->"Italic"], "2"]}]]}], TraditionalForm]],
  FontWeight->"Plain",
  FontColor->GrayLevel[0]],
 StyleBox[" are not eigenfunctions of the free-space Hamiltonian operator ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox[
       StyleBox["dx",
        FontSlant->"Italic"], "2"]]}]}], TraditionalForm]],
  FontWeight->"Plain",
  FontColor->GrayLevel[0]],
 StyleBox[".\n\n",
  FontColor->GrayLevel[0]],
 StyleBox["Question 1.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Suppose a particle in free space is described by a Gaussian \
function. If we measure its energy, what do we observe? What happens to the \
particle\[CloseCurlyQuote]s wavefunction when we observe it?",
  FontColor->GrayLevel[0]]
}], "Text"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Example of an eigenfunction",
 StyleBox["\n", "Text"]
}], "Section"],

Cell[TextData[{
 "Next, let\[CloseCurlyQuote]s look at a set of functions that are",
 StyleBox[" eigenfunctions",
  FontWeight->"Bold"],
 " of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox[
       StyleBox["dx",
        FontSlant->"Italic"], "2"]]}]}], TraditionalForm]]],
 ": the sine functions, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Psi]", "(", "x", ")"}], "=", 
    RowBox[{"sin", "(", 
     StyleBox["ax",
      FontSlant->"Italic"], ")"}]}], TraditionalForm]]],
 ".\n\n",
 StyleBox["Question 2.1:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Show that the sine functions ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Psi]", "(", "x", ")"}], "=", 
    RowBox[{"sin", "(", 
     StyleBox["ax",
      FontSlant->"Italic"], ")"}]}], TraditionalForm]],
  FontWeight->"Plain",
  FontColor->GrayLevel[0]],
 StyleBox[" are eigenfunctions of the free-space Hamiltonian operator ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox[
       StyleBox["dx",
        FontSlant->"Italic"], "2"]]}]}], TraditionalForm]],
  FontWeight->"Plain",
  FontColor->GrayLevel[0]],
 StyleBox[". What are their eigenvalues?\n\n",
  FontColor->GrayLevel[0]],
 "Below, a series of sine functions ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Psi]", "(", "x", ")"}], "=", 
    RowBox[{"sin", "(", 
     StyleBox["ax",
      FontSlant->"Italic"], ")"}]}], TraditionalForm]]],
 " are plotted for different values of ",
 StyleBox["a",
  FontSlant->"Italic"],
 ", along with the corresponding functions ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "\[Psi]"}], TraditionalForm]]],
 ". Take a look at these plots, using the scroll bar to adjust the value of \
",
 StyleBox["a",
  FontSlant->"Italic"],
 ".\n"
}], "Text"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 0.3, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`a$$], 0.3, 2., 0.01}}, Typeset`size$$ = {
    592., {261., 265.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`a$1323$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`a$$ = 0.3}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$1323$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`sine[$CellContext`a$$], 
      "Specifications" :> {{$CellContext`a$$, 0.3, 2., 0.01}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{637., {305., 310.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`sine[
         Pattern[$CellContext`a, 
          Blank[]]] := Plot[{
          Sin[$CellContext`a $CellContext`x], (1/2) $CellContext`a^2 
          Sin[$CellContext`a $CellContext`x]}, {$CellContext`x, -8, 8}, 
         PlotRange -> {-2.5, 2.5}, PlotStyle -> {{Orange, 
            Thickness[0.01]}, {Purple, 
            Thickness[0.01]}}, AspectRatio -> 1, ImageSize -> 500, 
         PlotLegends -> {
          "\[Psi](\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\))", 
           "\!\(\*OverscriptBox[\(H\), \(^\)]\)\[Psi]"}, LabelStyle -> 
         Directive[Black, Bold, 20], AxesStyle -> {{
            Thickness[0.006], Black}, {
            Thickness[0.006], Black}}, 
         Ticks -> {{{-8, -8, 0.02}, {-4, -4, 0.02}, {0, 0, 0.02}, {
            4, 4, 0.02}, {8, 8, 0.02}}, {{-2, -2, 0.02}, {-1, -1, 0.02}, {
            0, 0, 0.02}, {1, 1, 0.02}, {2, 2, 0.02}}}, TicksStyle -> Black, 
         PlotLabel -> Style[
           HoldForm[
           "\[Psi](\!\(\*\nStyleBox[\"x\",\nFontSlant->\"Italic\"]\)) = sin" 
            Superscript[$CellContext`a $CellContext`x, " "]], Bold, Black, 
           24]], Attributes[Superscript] = {NHoldRest, ReadProtected}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"],

Cell[TextData[{
 StyleBox["Question 2.2:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Describe how you can see in these plots that the sine functions ",
  
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Psi]", "(", "x", ")"}], "=", 
    RowBox[{"sin", "(", 
     StyleBox["ax",
      FontSlant->"Italic"], ")"}]}], TraditionalForm]],
  FontWeight->"Plain",
  FontColor->GrayLevel[0]],
 StyleBox[" are eigenfunctions of the free-space Hamiltonian operator ",
  FontColor->GrayLevel[0]],
 Cell[BoxData[
  FormBox[
   RowBox[{
    OverscriptBox["H", "^"], "=", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox[
       StyleBox["dx",
        FontSlant->"Italic"], "2"]]}]}], TraditionalForm]],
  FontWeight->"Plain",
  FontColor->GrayLevel[0]],
 StyleBox[".\n\n",
  FontColor->GrayLevel[0]],
 StyleBox["Question 2.3:",
  FontWeight->"Bold",
  FontColor->RGBColor[0., 0.5019607843137255, 1.]],
 StyleBox[" Suppose a particle in free space is described by a sine function. \
If we measure its energy, what do we observe? What happens to the particle\
\[CloseCurlyQuote]s wavefunction when we observe it?",
  FontColor->GrayLevel[0]]
}], "Text"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{802, 1308},
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
Cell[1486, 35, 294, 9, 144, "Title"],
Cell[CellGroupData[{
Cell[1805, 48, 121, 3, 83, "Section"],
Cell[1929, 53, 1688, 54, 162, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3654, 112, 89, 3, 83, "Section"],
Cell[3746, 117, 2732, 97, 282, "Text"],
Cell[6481, 216, 2877, 57, 640, "Output"],
Cell[9361, 275, 1361, 43, 128, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10759, 323, 86, 3, 83, "Section"],
Cell[10848, 328, 2176, 79, 202, "Text"],
Cell[13027, 409, 2796, 55, 632, "Output"],
Cell[15826, 466, 1303, 41, 123, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature fwppRegtDFadTBgRnFBu#HE8 *)
