import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstSecondP7AllEqual
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstSecondP7FirstSecond
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstSecondP7FirstThird
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstSecondP7SecondThird
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstSecondP7AllDistinct
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstThirdP7AllEqual
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstThirdP7FirstSecond
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstThirdP7FirstThird
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstThirdP7SecondThird
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3FirstThirdP7AllDistinct
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3SecondThirdP7AllEqual
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3SecondThirdP7FirstSecond
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3SecondThirdP7FirstThird
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3SecondThirdP7SecondThird
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3SecondThirdP7AllDistinct
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3AllDistinctP7AllEqual
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3AllDistinctP7FirstSecond
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3AllDistinctP7FirstThird
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3AllDistinctP7SecondThird
import Erdos848.GeneratedTailR263EvenOneFinite23.SharpP3AllDistinctP7AllDistinct

namespace Erdos848.GeneratedTailR263EvenOneFinite23

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def sharpCertificate : Erdos848.E1Finite23SharpCertificate where
  fourLeaf := by
    intro p3 p7 p11 hp3
    cases p3 with
  | allEqual => exact False.elim (hp3 rfl)
  | firstSecond =>
      cases p7 with
      | allEqual =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstSecond_p7_allEqual_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstSecond_p7_allEqual_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstSecond_p7_allEqual_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstSecond_p7_allEqual_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstSecond_p7_allEqual_p11_allDistinct
      | firstSecond =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstSecond_p7_firstSecond_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstSecond_p7_firstSecond_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstSecond_p7_firstSecond_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstSecond_p7_firstSecond_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstSecond_p7_firstSecond_p11_allDistinct
      | firstThird =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstSecond_p7_firstThird_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstSecond_p7_firstThird_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstSecond_p7_firstThird_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstSecond_p7_firstThird_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstSecond_p7_firstThird_p11_allDistinct
      | secondThird =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstSecond_p7_secondThird_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstSecond_p7_secondThird_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstSecond_p7_secondThird_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstSecond_p7_secondThird_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstSecond_p7_secondThird_p11_allDistinct
      | allDistinct =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstSecond_p7_allDistinct_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstSecond_p7_allDistinct_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstSecond_p7_allDistinct_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstSecond_p7_allDistinct_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstSecond_p7_allDistinct_p11_allDistinct
  | firstThird =>
      cases p7 with
      | allEqual =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstThird_p7_allEqual_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstThird_p7_allEqual_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstThird_p7_allEqual_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstThird_p7_allEqual_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstThird_p7_allEqual_p11_allDistinct
      | firstSecond =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstThird_p7_firstSecond_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstThird_p7_firstSecond_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstThird_p7_firstSecond_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstThird_p7_firstSecond_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstThird_p7_firstSecond_p11_allDistinct
      | firstThird =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstThird_p7_firstThird_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstThird_p7_firstThird_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstThird_p7_firstThird_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstThird_p7_firstThird_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstThird_p7_firstThird_p11_allDistinct
      | secondThird =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstThird_p7_secondThird_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstThird_p7_secondThird_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstThird_p7_secondThird_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstThird_p7_secondThird_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstThird_p7_secondThird_p11_allDistinct
      | allDistinct =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_firstThird_p7_allDistinct_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_firstThird_p7_allDistinct_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_firstThird_p7_allDistinct_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_firstThird_p7_allDistinct_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_firstThird_p7_allDistinct_p11_allDistinct
  | secondThird =>
      cases p7 with
      | allEqual =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_secondThird_p7_allEqual_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_secondThird_p7_allEqual_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_secondThird_p7_allEqual_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_secondThird_p7_allEqual_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_secondThird_p7_allEqual_p11_allDistinct
      | firstSecond =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_secondThird_p7_firstSecond_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_secondThird_p7_firstSecond_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_secondThird_p7_firstSecond_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_secondThird_p7_firstSecond_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_secondThird_p7_firstSecond_p11_allDistinct
      | firstThird =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_secondThird_p7_firstThird_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_secondThird_p7_firstThird_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_secondThird_p7_firstThird_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_secondThird_p7_firstThird_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_secondThird_p7_firstThird_p11_allDistinct
      | secondThird =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_secondThird_p7_secondThird_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_secondThird_p7_secondThird_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_secondThird_p7_secondThird_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_secondThird_p7_secondThird_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_secondThird_p7_secondThird_p11_allDistinct
      | allDistinct =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_secondThird_p7_allDistinct_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_secondThird_p7_allDistinct_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_secondThird_p7_allDistinct_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_secondThird_p7_allDistinct_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_secondThird_p7_allDistinct_p11_allDistinct
  | allDistinct =>
      cases p7 with
      | allEqual =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_allDistinct_p7_allEqual_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_allDistinct_p7_allEqual_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_allDistinct_p7_allEqual_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_allDistinct_p7_allEqual_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_allDistinct_p7_allEqual_p11_allDistinct
      | firstSecond =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_allDistinct_p7_firstSecond_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_allDistinct_p7_firstSecond_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_allDistinct_p7_firstSecond_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_allDistinct_p7_firstSecond_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_allDistinct_p7_firstSecond_p11_allDistinct
      | firstThird =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_allDistinct_p7_firstThird_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_allDistinct_p7_firstThird_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_allDistinct_p7_firstThird_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_allDistinct_p7_firstThird_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_allDistinct_p7_firstThird_p11_allDistinct
      | secondThird =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_allDistinct_p7_secondThird_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_allDistinct_p7_secondThird_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_allDistinct_p7_secondThird_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_allDistinct_p7_secondThird_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_allDistinct_p7_secondThird_p11_allDistinct
      | allDistinct =>
          cases p11 with
          | allEqual =>
              exact sharp_four_p3_allDistinct_p7_allDistinct_p11_allEqual
          | firstSecond =>
              exact sharp_four_p3_allDistinct_p7_allDistinct_p11_firstSecond
          | firstThird =>
              exact sharp_four_p3_allDistinct_p7_allDistinct_p11_firstThird
          | secondThird =>
              exact sharp_four_p3_allDistinct_p7_allDistinct_p11_secondThird
          | allDistinct =>
              exact sharp_four_p3_allDistinct_p7_allDistinct_p11_allDistinct

#print axioms sharpCertificate

end Erdos848.GeneratedTailR263EvenOneFinite23
