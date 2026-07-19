import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7AllEqual
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7FirstSecond
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7FirstThird
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7SecondThird
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7AllDistinct
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7AllEqual
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7FirstSecond
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7FirstThird
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7SecondThird
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7AllDistinct
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7AllEqual
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7FirstSecond
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7FirstThird
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7SecondThird
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7AllDistinct
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7AllEqual
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7FirstSecond
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7FirstThird
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7SecondThird
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7AllDistinct
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7AllEqual
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7FirstSecond
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7FirstThird
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7SecondThird
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7AllDistinct

namespace Erdos848.GeneratedTailR263EvenOneFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem four_all
    (p3 p7 p11 p13 p17 p19 p23 : Erdos848.E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual) :
    Erdos848.e1FiniteFourPaymentCrossInequality
      p3 p7 p11 p13 p17 p19 p23 := by
  have hpass : Erdos848.e1FiniteFourBlockPasses p3 p7 = true := by
    cases p3 <;> cases p7 <;> simp_all
    all_goals first
      | exact four_p3_firstSecond_p7_allEqual
      | exact four_p3_firstSecond_p7_firstSecond
      | exact four_p3_firstSecond_p7_firstThird
      | exact four_p3_firstSecond_p7_secondThird
      | exact four_p3_firstSecond_p7_allDistinct
      | exact four_p3_firstThird_p7_allEqual
      | exact four_p3_firstThird_p7_firstSecond
      | exact four_p3_firstThird_p7_firstThird
      | exact four_p3_firstThird_p7_secondThird
      | exact four_p3_firstThird_p7_allDistinct
      | exact four_p3_secondThird_p7_allEqual
      | exact four_p3_secondThird_p7_firstSecond
      | exact four_p3_secondThird_p7_firstThird
      | exact four_p3_secondThird_p7_secondThird
      | exact four_p3_secondThird_p7_allDistinct
      | exact four_p3_allDistinct_p7_allEqual
      | exact four_p3_allDistinct_p7_firstSecond
      | exact four_p3_allDistinct_p7_firstThird
      | exact four_p3_allDistinct_p7_secondThird
      | exact four_p3_allDistinct_p7_allDistinct
  exact Erdos848.e1FiniteFourBlockPasses_sound
    hpass p11 p13 p17 p19 p23

theorem three_all
    (p7 p11 p13 p17 p19 p23 : Erdos848.E1FiniteRootPattern) :
    Erdos848.e1FiniteThreePaymentCrossInequality
      p7 p11 p13 p17 p19 p23 := by
  have hpass : Erdos848.e1FiniteThreeBlockPasses p7 = true := by
    cases p7
    · exact three_p7_allEqual
    · exact three_p7_firstSecond
    · exact three_p7_firstThird
    · exact three_p7_secondThird
    · exact three_p7_allDistinct
  exact Erdos848.e1FiniteThreeBlockPasses_sound
    hpass p11 p13 p17 p19 p23

end Erdos848.GeneratedTailR263EvenOneFinite23
