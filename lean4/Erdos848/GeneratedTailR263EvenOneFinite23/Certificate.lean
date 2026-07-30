import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7AllEqualPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7AllEqualPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7FirstSecondPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7FirstSecondPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7FirstThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7FirstThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7SecondThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7SecondThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7AllDistinctPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstSecondP7AllDistinctPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7AllEqualPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7AllEqualPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7FirstSecondPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7FirstSecondPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7FirstThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7FirstThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7SecondThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7SecondThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7AllDistinctPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3FirstThirdP7AllDistinctPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7AllEqualPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7AllEqualPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7FirstSecondPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7FirstSecondPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7FirstThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7FirstThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7SecondThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7SecondThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7AllDistinctPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3SecondThirdP7AllDistinctPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7AllEqualPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7AllEqualPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7FirstSecondPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7FirstSecondPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7FirstThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7FirstThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7SecondThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7SecondThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7AllDistinctPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.FourP3AllDistinctP7AllDistinctPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7AllEqualPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7AllEqualPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7FirstSecondPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7FirstSecondPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7FirstThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7FirstThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7SecondThirdPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7SecondThirdPart1
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7AllDistinctPart0
import Erdos848.GeneratedTailR263EvenOneFinite23.ThreeP7AllDistinctPart1

namespace Erdos848.GeneratedTailR263EvenOneFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem four_all
    (p3 p7 p11 p13 p17 p19 p23 : Erdos848.E1FiniteRootPattern)
    (hp3 : p3 ≠ .allEqual) :
    Erdos848.e1FiniteFourPaymentCrossInequality
      p3 p7 p11 p13 p17 p19 p23 := by
  cases p3 with
  | allEqual => exact False.elim (hp3 rfl)
  | firstSecond =>
      cases p7 with
      | allEqual =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allEqual_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allEqual_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allEqual_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allEqual_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allEqual_p11_allDistinct
                  p13 p17 p19 p23
      | firstSecond =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstSecond_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstSecond_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstSecond_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstSecond_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstSecond_p11_allDistinct
                  p13 p17 p19 p23
      | firstThird =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstThird_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstThird_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstThird_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstThird_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_firstThird_p11_allDistinct
                  p13 p17 p19 p23
      | secondThird =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_secondThird_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_secondThird_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_secondThird_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_secondThird_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_secondThird_p11_allDistinct
                  p13 p17 p19 p23
      | allDistinct =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allDistinct_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allDistinct_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allDistinct_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allDistinct_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstSecond_p7_allDistinct_p11_allDistinct
                  p13 p17 p19 p23
  | firstThird =>
      cases p7 with
      | allEqual =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allEqual_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allEqual_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allEqual_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allEqual_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allEqual_p11_allDistinct
                  p13 p17 p19 p23
      | firstSecond =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstSecond_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstSecond_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstSecond_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstSecond_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstSecond_p11_allDistinct
                  p13 p17 p19 p23
      | firstThird =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstThird_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstThird_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstThird_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstThird_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_firstThird_p11_allDistinct
                  p13 p17 p19 p23
      | secondThird =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_secondThird_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_secondThird_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_secondThird_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_secondThird_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_secondThird_p11_allDistinct
                  p13 p17 p19 p23
      | allDistinct =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allDistinct_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allDistinct_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allDistinct_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allDistinct_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_firstThird_p7_allDistinct_p11_allDistinct
                  p13 p17 p19 p23
  | secondThird =>
      cases p7 with
      | allEqual =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allEqual_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allEqual_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allEqual_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allEqual_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allEqual_p11_allDistinct
                  p13 p17 p19 p23
      | firstSecond =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstSecond_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstSecond_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstSecond_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstSecond_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstSecond_p11_allDistinct
                  p13 p17 p19 p23
      | firstThird =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstThird_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstThird_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstThird_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstThird_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_firstThird_p11_allDistinct
                  p13 p17 p19 p23
      | secondThird =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_secondThird_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_secondThird_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_secondThird_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_secondThird_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_secondThird_p11_allDistinct
                  p13 p17 p19 p23
      | allDistinct =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allDistinct_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allDistinct_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allDistinct_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allDistinct_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_secondThird_p7_allDistinct_p11_allDistinct
                  p13 p17 p19 p23
  | allDistinct =>
      cases p7 with
      | allEqual =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allEqual_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allEqual_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allEqual_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allEqual_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allEqual_p11_allDistinct
                  p13 p17 p19 p23
      | firstSecond =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstSecond_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstSecond_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstSecond_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstSecond_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstSecond_p11_allDistinct
                  p13 p17 p19 p23
      | firstThird =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstThird_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstThird_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstThird_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstThird_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_firstThird_p11_allDistinct
                  p13 p17 p19 p23
      | secondThird =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_secondThird_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_secondThird_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_secondThird_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_secondThird_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_secondThird_p11_allDistinct
                  p13 p17 p19 p23
      | allDistinct =>
          cases p11 with
          | allEqual =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allDistinct_p11_allEqual
                  p13 p17 p19 p23
          | firstSecond =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allDistinct_p11_firstSecond
                  p13 p17 p19 p23
          | firstThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allDistinct_p11_firstThird
                  p13 p17 p19 p23
          | secondThird =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allDistinct_p11_secondThird
                  p13 p17 p19 p23
          | allDistinct =>
              exact Erdos848.e1FiniteFourLeafPasses_sound
                four_p3_allDistinct_p7_allDistinct_p11_allDistinct
                  p13 p17 p19 p23

theorem three_all
    (p7 p11 p13 p17 p19 p23 : Erdos848.E1FiniteRootPattern) :
    Erdos848.e1FiniteThreePaymentCrossInequality
      p7 p11 p13 p17 p19 p23 := by
  cases p7 with
  | allEqual =>
      cases p11 with
      | allEqual =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allEqual_p11_allEqual p13 p17 p19 p23
      | firstSecond =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allEqual_p11_firstSecond p13 p17 p19 p23
      | firstThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allEqual_p11_firstThird p13 p17 p19 p23
      | secondThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allEqual_p11_secondThird p13 p17 p19 p23
      | allDistinct =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allEqual_p11_allDistinct p13 p17 p19 p23
  | firstSecond =>
      cases p11 with
      | allEqual =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstSecond_p11_allEqual p13 p17 p19 p23
      | firstSecond =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstSecond_p11_firstSecond p13 p17 p19 p23
      | firstThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstSecond_p11_firstThird p13 p17 p19 p23
      | secondThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstSecond_p11_secondThird p13 p17 p19 p23
      | allDistinct =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstSecond_p11_allDistinct p13 p17 p19 p23
  | firstThird =>
      cases p11 with
      | allEqual =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstThird_p11_allEqual p13 p17 p19 p23
      | firstSecond =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstThird_p11_firstSecond p13 p17 p19 p23
      | firstThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstThird_p11_firstThird p13 p17 p19 p23
      | secondThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstThird_p11_secondThird p13 p17 p19 p23
      | allDistinct =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_firstThird_p11_allDistinct p13 p17 p19 p23
  | secondThird =>
      cases p11 with
      | allEqual =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_secondThird_p11_allEqual p13 p17 p19 p23
      | firstSecond =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_secondThird_p11_firstSecond p13 p17 p19 p23
      | firstThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_secondThird_p11_firstThird p13 p17 p19 p23
      | secondThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_secondThird_p11_secondThird p13 p17 p19 p23
      | allDistinct =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_secondThird_p11_allDistinct p13 p17 p19 p23
  | allDistinct =>
      cases p11 with
      | allEqual =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allDistinct_p11_allEqual p13 p17 p19 p23
      | firstSecond =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allDistinct_p11_firstSecond p13 p17 p19 p23
      | firstThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allDistinct_p11_firstThird p13 p17 p19 p23
      | secondThird =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allDistinct_p11_secondThird p13 p17 p19 p23
      | allDistinct =>
          exact Erdos848.e1FiniteThreeLeafPasses_sound
            three_p7_allDistinct_p11_allDistinct p13 p17 p19 p23

end Erdos848.GeneratedTailR263EvenOneFinite23
