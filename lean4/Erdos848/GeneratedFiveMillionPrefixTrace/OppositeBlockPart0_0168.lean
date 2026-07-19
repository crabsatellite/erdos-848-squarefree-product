import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0168

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0168 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 172032
  | _ => True

theorem oppositePart0_0168 : oppositePartValid0_0168 oppositeHistoryChunk0168 := by
  unfold oppositePartValid0_0168 oppositeHistoryChunk0168
  decide

def oppositePartValid1_0168 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 172160
  | _ => True

theorem oppositePart1_0168 : oppositePartValid1_0168 oppositeHistoryChunk0168 := by
  unfold oppositePartValid1_0168 oppositeHistoryChunk0168
  decide

def oppositePartValid2_0168 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 172288
  | _ => True

theorem oppositePart2_0168 : oppositePartValid2_0168 oppositeHistoryChunk0168 := by
  unfold oppositePartValid2_0168 oppositeHistoryChunk0168
  decide

def oppositePartValid3_0168 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 172416
  | _ => True

theorem oppositePart3_0168 : oppositePartValid3_0168 oppositeHistoryChunk0168 := by
  unfold oppositePartValid3_0168 oppositeHistoryChunk0168
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
