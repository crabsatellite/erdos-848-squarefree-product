import Erdos848.TailGlobalMixedEvenFinite95

namespace Erdos848

/-!
# Scaled nine-state Bellman certificate at cutoff 95

The threshold is five hits among eight forms.  Relabelling invariance compresses
all 256 masks to the nine hit counts.  For kernel performance, every Bellman
row is stored as one common natural-number denominator and nine natural-number
numerators.  Prime updates therefore use only `Nat` subtraction, addition,
multiplication, and maximum; rational normalization is postponed until the
single final density statement.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def globalMixedPartitionsUpToEight : Nat → List (List Nat)
  | 0 => [[]]
  | 1 => [[1]]
  | 2 => [[2], [1, 1]]
  | 3 => [[3], [2, 1], [1, 1, 1]]
  | 4 => [[4], [3, 1], [2, 2], [2, 1, 1], [1, 1, 1, 1]]
  | 5 => [[5], [4, 1], [3, 2], [3, 1, 1], [2, 2, 1],
      [2, 1, 1, 1], [1, 1, 1, 1, 1]]
  | 6 => [[6], [5, 1], [4, 2], [4, 1, 1], [3, 3], [3, 2, 1],
      [3, 1, 1, 1], [2, 2, 2], [2, 2, 1, 1], [2, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1]]
  | 7 => [[7], [6, 1], [5, 2], [5, 1, 1], [4, 3], [4, 2, 1],
      [4, 1, 1, 1], [3, 3, 1], [3, 2, 2], [3, 2, 1, 1],
      [3, 1, 1, 1, 1], [2, 2, 2, 1], [2, 2, 1, 1, 1],
      [2, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]]
  | 8 => [[8], [7, 1], [6, 2], [6, 1, 1], [5, 3], [5, 2, 1],
      [5, 1, 1, 1], [4, 4], [4, 3, 1], [4, 2, 2], [4, 2, 1, 1],
      [4, 1, 1, 1, 1], [3, 3, 2], [3, 3, 1, 1], [3, 2, 2, 1],
      [3, 2, 1, 1, 1], [3, 1, 1, 1, 1, 1], [2, 2, 2, 2],
      [2, 2, 2, 1, 1], [2, 2, 1, 1, 1, 1],
      [2, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1]]
  | _ => []

abbrev GlobalMixedEightNatState := Fin 9 → Nat

def globalMixedEightNatStateGet
    (state : GlobalMixedEightNatState) (j : Nat) : Nat :=
  if hj : j < 9 then state ⟨j, hj⟩ else 0

def globalMixedNatPartitionScore
    (state : GlobalMixedEightNatState) (hit : Nat)
    (partition : List Nat) : Nat :=
  (partition.map fun size =>
    globalMixedEightNatStateGet state (hit + size) -
      globalMixedEightNatStateGet state hit).sum

def globalMixedNatBestPartitionScore
    (state : GlobalMixedEightNatState) (hit blockSize : Nat) : Nat :=
  (((globalMixedPartitionsUpToEight (8 - hit)).filter fun partition =>
      partition.all fun size => size ≤ blockSize).map fun partition =>
        globalMixedNatPartitionScore state hit partition).foldl max 0

structure GlobalMixedEightScaledRow where
  denominator : Nat
  numerators : GlobalMixedEightNatState

@[ext] theorem GlobalMixedEightScaledRow.ext
    {left right : GlobalMixedEightScaledRow}
    (hDenominator : left.denominator = right.denominator)
    (hNumerators : left.numerators = right.numerators) : left = right := by
  cases left
  cases right
  simp_all

def globalMixedScaledPrimeUpdate
    (prime blockSize : Nat) (row : GlobalMixedEightScaledRow) :
    GlobalMixedEightScaledRow where
  denominator := row.denominator * prime ^ 2
  numerators := fun hit =>
    row.numerators hit * prime ^ 2 +
      globalMixedNatBestPartitionScore row.numerators hit.val blockSize

def globalMixedEvenFinite95RowZero : GlobalMixedEightScaledRow where
  denominator := 1
  numerators := ![0, 0, 0, 0, 0, 1, 1, 1, 1]

def globalMixedEvenFinite95RowOne : GlobalMixedEightScaledRow where
  denominator := 7921
  numerators := ![0, 0, 0, 2, 4, 7921, 7921, 7921, 7921]

def globalMixedEvenFinite95RowTwo : GlobalMixedEightScaledRow where
  denominator := 54567769
  numerators := ![0, 6, 12, 29618, 59224, 54567769, 54567769,
    54567769, 54567769]

def globalMixedEvenFinite95RowThree : GlobalMixedEightScaledRow where
  denominator := 340557446329
  numerators := ![48, 126288, 252528, 293951846, 587651164,
    340557446329, 340557446329, 340557446329, 340557446329]

def globalMixedEvenFinite95RowFour : GlobalMixedEightScaledRow where
  denominator := 1814830631487241
  numerators := ![1265712, 1554591666, 3107917620, 2247290075618,
    4491472233616, 1814830631487241, 1814830631487241,
    1814830631487241, 1814830631487241]

def globalMixedEvenFinite95RowFive : GlobalMixedEightScaledRow where
  denominator := 9148561213327181881
  numerators := ![18807061824, 14575456366116, 29132105670408,
    14956000136171582, 29882868166672756, 9148561213327181881,
    9148561213327181881, 9148561213327181881, 9148561213327181881]

def globalMixedEvenFinite95RowSix : GlobalMixedEightScaledRow where
  denominator := 41067891286625719463809
  numerators := ![30025500857356036, 125180365697412296,
    18427838184797484458, 85419621905686753370, 170618908580836038184,
    41067891286625719463809, 41067891286625719463809,
    41067891286625719463809, 41067891286625719463809]

def globalMixedEvenFinite95RowSeven : GlobalMixedEightScaledRow where
  denominator := 152813623477534302124833289
  numerators := ![300901894183820733046, 825086255009448477354,
    150668912782513283626920, 399896555727175623995462,
    798462048341470431785164, 152813623477534302124833289,
    152813623477534302124833289, 152813623477534302124833289,
    152813623477534302124833289]

def globalMixedEvenFinite95RowEight : GlobalMixedEightScaledRow where
  denominator := 531944223325296905696544679009
  numerators := ![1996998812208193041151832, 4617243004388315951434460,
    829804394525432317987721258, 1697265929822526894937668578,
    3387507035993429899816348384, 531944223325296905696544679009,
    531944223325296905696544679009, 531944223325296905696544679009,
    531944223325296905696544679009]

def globalMixedEvenFinite95RowNine : GlobalMixedEightScaledRow where
  denominator := 1494231323320759008101594003336281
  numerators := ![12380589737855257666145889192,
    548292331474608338472037556613, 3393149382083482327984622929224,
    5829804152768597708488003736270, 11629734129262758491771035933156,
    1494231323320759008101594003336281,
    1494231323320759008101594003336281,
    1494231323320759008101594003336281,
    1494231323320759008101594003336281]

def globalMixedEvenFinite95RowTen : GlobalMixedEightScaledRow where
  denominator := 3300756993215556648896421153369844729
  numerators := ![1527385089024974159479265984519295,
    2715942233014482369601151926714328,
    10477143332899763514065250811469930,
    15860640341778307319619495284817338,
    31620489048307418506761510245954104,
    3300756993215556648896421153369844729,
    3300756993215556648896421153369844729,
    3300756993215556648896421153369844729,
    3300756993215556648896421153369844729]

def globalMixedEvenFinite95RowEleven : GlobalMixedEightScaledRow where
  denominator := 6103099680455564243809482712580842903921
  numerators := ![6137697892986462228774244922061799932,
    8348722786641613004056510272257162649,
    25952797722296976508271360555524650168,
    35911876546402176028317192112758449510,
    71542830266989413740560671017264700796,
    6103099680455564243809482712580842903921,
    6103099680455564243809482712580842903921,
    6103099680455564243809482712580842903921,
    6103099680455564243809482712580842903921]

def globalMixedEvenFinite95RowTwelve : GlobalMixedEightScaledRow where
  denominator := 10259310562845803493843740439848396921491201
  numerators := ![16444206319326236501949757128835363439259,
    20192148069493821891360924130717883692388,
    55780946736647752045006579797887573439914,
    72537871036040969276875774461387628786418,
    144389725079563503818158176146276274850576,
    10259310562845803493843740439848396921491201,
    10259310562845803493843740439848396921491201,
    10259310562845803493843740439848396921491201,
    10259310562845803493843740439848396921491201]

def globalMixedEvenFinite95RowThirteen : GlobalMixedEightScaledRow where
  denominator := 14044996160535904983072080662152455385521454169
  numerators := ![32811078472400809761285934209427726371744672,
    38006366698923421523152281902686020203836173,
    96771175314689084033211475463409106735344840,
    119749742686003134523717946970098571040079966,
    238129216984987396687160872199060702857001044,
    14044996160535904983072080662152455385521454169,
    14044996160535904983072080662152455385521454169,
    14044996160535904983072080662152455385521454169,
    14044996160535904983072080662152455385521454169]

def globalMixedEvenFinite95RowFourteen : GlobalMixedEightScaledRow where
  denominator := 13497241310275004688732269516328509625486117456409
  numerators := ![45630570158254284678669009515963743547064674583,
    50731231041788453620462279879027409463857345120,
    120893549447858641553993966293714244130238609898,
    143048375031247800236553115393858402530296516810,
    284069645296776558561901277343110914176235815784,
    13497241310275004688732269516328509625486117456409,
    13497241310275004688732269516328509625486117456409,
    13497241310275004688732269516328509625486117456409,
    13497241310275004688732269516328509625486117456409]

def globalMixedEvenFinite95RowFifteen : GlobalMixedEightScaledRow where
  denominator := 11351179941941278943223838663232276595033824780839969
  numerators := ![51924338048081597334372121615615948864003675948356,
    56344813799632293834862023612175617079838665827873,
    128424170607303409641265476753083270076242428617240,
    147153090542032442534257951010053471485536951815382,
    291755258354501998271240447201497873667453847636844,
    11351179941941278943223838663232276595033824780839969,
    11351179941941278943223838663232276595033824780839969,
    11351179941941278943223838663232276595033824780839969,
    11351179941941278943223838663232276595033824780839969]

def globalMixedEvenFinite95RowSixteen : GlobalMixedEightScaledRow where
  denominator := 6004774189286936560965410652849874318772893309064343601
  numerators := ![38862459183822313180972204705671935117849298957438963,
    41336652072701999792467365554050324669776255519765884,
    90381897793931454767394583575339436520247409442965418,
    100396640767346124657738600004954177065127540064207714,
    198576230403878664865296589433715490055548569132702976,
    6004774189286936560965410652849874318772893309064343601,
    6004774189286936560965410652849874318772893309064343601,
    6004774189286936560965410652849874318772893309064343601,
    6004774189286936560965410652849874318772893309064343601]

def globalMixedEvenFinite95RowSeventeen : GlobalMixedEightScaledRow where
  denominator := 2167723482332584098508513245678804629077014484572228039961
  numerators := ![20056793677046493117592170742191053203145919174849139032,
    21043208513790833151326491476187656365278117609792998933,
    44456649686595265383425476809246606348314606608153272264,
    48150122003687664414266536696907059516916994530247751790,
    94910811011332429600772525039235927224922412416632336836,
    2167723482332584098508513245678804629077014484572228039961,
    2167723482332584098508513245678804629077014484572228039961,
    2167723482332584098508513245678804629077014484572228039961,
    2167723482332584098508513245678804629077014484572228039961]

def globalMixedEvenFinite95RowEighteen : GlobalMixedEightScaledRow where
  denominator := 626472086394116804468960328001174537803257186041373903548729
  numerators := ![7972173389648615287671732785384543957896810282284178693935,
    8302035136801885642539988824383897933136756650999451070568,
    17094505424718009362060138335611385280120321065684445219690,
    18201292668731172649098028511712264207217211817211945428698,
    35720475067560078830254222618897457775410945477029128158104,
    626472086394116804468960328001174537803257186041373903548729,
    626472086394116804468960328001174537803257186041373903548729,
    626472086394116804468960328001174537803257186041373903548729,
    626472086394116804468960328001174537803257186041373903548729]

def globalMixedEvenFinite95RowNineteen : GlobalMixedEightScaledRow where
  denominator := 105873782600605739955254295432198496888750464440992189699735201
  numerators := ![1976026335134166730159237731672105642979241715000043690864572,
    2048632429307591785603392684292182950412506492235311360491689,
    4107726578716141172401963758049450417386607990052050158785688,
    4310079230865168347518447611565482391779982479216959876419430,
    8399766731723880224867788044122778684155834747875301760282076,
    105873782600605739955254295432198496888750464440992189699735201,
    105873782600605739955254295432198496888750464440992189699735201,
    105873782600605739955254295432198496888750464440992189699735201,
    105873782600605739955254295432198496888750464440992189699735201]

def globalMixedEvenFinite95RowTwenty : GlobalMixedEightScaledRow where
  denominator := 12810727694673294534585769747296018123538806197360054953667959321
  numerators := ![345330995712436749191722033112744550795060211005214348789038699,
    358060808419933042666925812907091046671994571764869543358528268,
    700567028068432279426342278072281593446507279698178348294967274,
    728736681175025225142553197073246694691694696177460946577245218,
    1406267838014116946130548382891159093601234523265379064751943696,
    12810727694673294534585769747296018123538806197360054953667959321,
    12810727694673294534585769747296018123538806197360054953667959321,
    12810727694673294534585769747296018123538806197360054953667959321,
    12810727694673294534585769747296018123538806197360054953667959321]

def globalMixedEvenFinite95RowTwentyOne : GlobalMixedEightScaledRow where
  denominator := 627725657038991432194702717617504888053401503670642692729730006729
  numerators := ![29770021174332846971739258500668258705598330810782590293330023392,
    31045853528424264486061831336820456410723785593574302556270731613,
    58548105708562906202209626563989271139063454540534492277199380520,
    60549610561411866371859534942852543296496802942148692514641142366,
    114524963489328440714217756219286231706210778336382277728509303604,
    627725657038991432194702717617504888053401503670642692729730006729,
    627725657038991432194702717617504888053401503670642692729730006729,
    627725657038991432194702717617504888053401503670642692729730006729,
    627725657038991432194702717617504888053401503670642692729730006729]

def globalMixedEvenFinite95RowTwentyTwo : GlobalMixedEightScaledRow where
  denominator := 5649530913350922889752324458557543992480613533035784234567570060561
  numerators := ![896665415820733227368737062065035242289086622288269517297681312839,
    959571595227289724311353293194534314634678781162045088352134431624,
    1665288054037923207804872821182934674080247189125026831399855677098,
    1733273940935782503334780401111411267591994603330559818275816171258,
    3083527445602607932349899651566450710744659906364482159561466544936,
    5649530913350922889752324458557543992480613533035784234567570060561,
    5649530913350922889752324458557543992480613533035784234567570060561,
    5649530913350922889752324458557543992480613533035784234567570060561,
    5649530913350922889752324458557543992480613533035784234567570060561]

attribute [local simp] globalMixedEvenFinite95RowZero
  globalMixedEvenFinite95RowOne globalMixedEvenFinite95RowTwo
  globalMixedEvenFinite95RowThree globalMixedEvenFinite95RowFour
  globalMixedEvenFinite95RowFive globalMixedEvenFinite95RowSix
  globalMixedEvenFinite95RowSeven globalMixedEvenFinite95RowEight
  globalMixedEvenFinite95RowNine globalMixedEvenFinite95RowTen
  globalMixedEvenFinite95RowEleven globalMixedEvenFinite95RowTwelve
  globalMixedEvenFinite95RowThirteen globalMixedEvenFinite95RowFourteen
  globalMixedEvenFinite95RowFifteen globalMixedEvenFinite95RowSixteen
  globalMixedEvenFinite95RowSeventeen globalMixedEvenFinite95RowEighteen
  globalMixedEvenFinite95RowNineteen globalMixedEvenFinite95RowTwenty
  globalMixedEvenFinite95RowTwentyOne globalMixedEvenFinite95RowTwentyTwo

macro "verify_scaled_bellman_row" : tactic =>
  `(tactic|
    (apply GlobalMixedEightScaledRow.ext
     · norm_num [globalMixedScaledPrimeUpdate]
     · funext hit
       fin_cases hit <;>
         norm_num [globalMixedScaledPrimeUpdate,
           globalMixedNatBestPartitionScore, globalMixedNatPartitionScore,
           globalMixedEightNatStateGet, globalMixedPartitionsUpToEight]))

theorem globalMixedEvenFinite95_rowOne_exact :
    globalMixedScaledPrimeUpdate 89 2 globalMixedEvenFinite95RowZero =
      globalMixedEvenFinite95RowOne := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowTwo_exact :
    globalMixedScaledPrimeUpdate 83 2 globalMixedEvenFinite95RowOne =
      globalMixedEvenFinite95RowTwo := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowThree_exact :
    globalMixedScaledPrimeUpdate 79 2 globalMixedEvenFinite95RowTwo =
      globalMixedEvenFinite95RowThree := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowFour_exact :
    globalMixedScaledPrimeUpdate 73 2 globalMixedEvenFinite95RowThree =
      globalMixedEvenFinite95RowFour := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowFive_exact :
    globalMixedScaledPrimeUpdate 71 2 globalMixedEvenFinite95RowFour =
      globalMixedEvenFinite95RowFive := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowSix_exact :
    globalMixedScaledPrimeUpdate 67 3 globalMixedEvenFinite95RowFive =
      globalMixedEvenFinite95RowSix := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowSeven_exact :
    globalMixedScaledPrimeUpdate 61 3 globalMixedEvenFinite95RowSix =
      globalMixedEvenFinite95RowSeven := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowEight_exact :
    globalMixedScaledPrimeUpdate 59 3 globalMixedEvenFinite95RowSeven =
      globalMixedEvenFinite95RowEight := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowNine_exact :
    globalMixedScaledPrimeUpdate 53 4 globalMixedEvenFinite95RowEight =
      globalMixedEvenFinite95RowNine := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowTen_exact :
    globalMixedScaledPrimeUpdate 47 5 globalMixedEvenFinite95RowNine =
      globalMixedEvenFinite95RowTen := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowEleven_exact :
    globalMixedScaledPrimeUpdate 43 5 globalMixedEvenFinite95RowTen =
      globalMixedEvenFinite95RowEleven := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowTwelve_exact :
    globalMixedScaledPrimeUpdate 41 6 globalMixedEvenFinite95RowEleven =
      globalMixedEvenFinite95RowTwelve := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowThirteen_exact :
    globalMixedScaledPrimeUpdate 37 7 globalMixedEvenFinite95RowTwelve =
      globalMixedEvenFinite95RowThirteen := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowFourteen_exact :
    globalMixedScaledPrimeUpdate 31 8 globalMixedEvenFinite95RowThirteen =
      globalMixedEvenFinite95RowFourteen := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowFifteen_exact :
    globalMixedScaledPrimeUpdate 29 8 globalMixedEvenFinite95RowFourteen =
      globalMixedEvenFinite95RowFifteen := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowSixteen_exact :
    globalMixedScaledPrimeUpdate 23 8 globalMixedEvenFinite95RowFifteen =
      globalMixedEvenFinite95RowSixteen := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowSeventeen_exact :
    globalMixedScaledPrimeUpdate 19 8 globalMixedEvenFinite95RowSixteen =
      globalMixedEvenFinite95RowSeventeen := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowEighteen_exact :
    globalMixedScaledPrimeUpdate 17 8 globalMixedEvenFinite95RowSeventeen =
      globalMixedEvenFinite95RowEighteen := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowNineteen_exact :
    globalMixedScaledPrimeUpdate 13 8 globalMixedEvenFinite95RowEighteen =
      globalMixedEvenFinite95RowNineteen := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowTwenty_exact :
    globalMixedScaledPrimeUpdate 11 8 globalMixedEvenFinite95RowNineteen =
      globalMixedEvenFinite95RowTwenty := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowTwentyOne_exact :
    globalMixedScaledPrimeUpdate 7 8 globalMixedEvenFinite95RowTwenty =
      globalMixedEvenFinite95RowTwentyOne := by
  verify_scaled_bellman_row

theorem globalMixedEvenFinite95_rowTwentyTwo_exact :
    globalMixedScaledPrimeUpdate 3 8 globalMixedEvenFinite95RowTwentyOne =
      globalMixedEvenFinite95RowTwentyTwo := by
  verify_scaled_bellman_row

def globalMixedEvenFinite95Density : Rat :=
  globalMixedEvenFinite95RowTwentyTwo.numerators 0 /
    globalMixedEvenFinite95RowTwentyTwo.denominator

theorem globalMixedEvenFinite95Density_exact :
    globalMixedEvenFinite95Density =
      1181377359447606360169614047516515470736609515531316887085219121 /
        7443387237616499195984617204950650846483021782655842206281383479 := by
  norm_num [globalMixedEvenFinite95Density, globalMixedEvenFinite95RowTwentyTwo]

theorem globalMixedEvenFinite95Density_lt :
    globalMixedEvenFinite95Density < 158716 / 1000000 := by
  rw [globalMixedEvenFinite95Density_exact]
  norm_num

theorem globalMixedEvenFinite95_twoBaseMain_lt :
    2 * globalMixedEvenFinite95Density / 25 <
      126973 / 10000000 := by
  rw [globalMixedEvenFinite95Density_exact]
  norm_num

#print axioms globalMixedEvenFinite95_rowOne_exact
#print axioms globalMixedEvenFinite95_rowTwo_exact
#print axioms globalMixedEvenFinite95_rowTwentyTwo_exact
#print axioms globalMixedEvenFinite95Density_exact
#print axioms globalMixedEvenFinite95Density_lt
#print axioms globalMixedEvenFinite95_twoBaseMain_lt

end Erdos848
