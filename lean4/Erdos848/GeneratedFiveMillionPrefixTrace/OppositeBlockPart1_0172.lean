import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0172

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0172 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 176640
  | _ => True

theorem oppositePart4_0172 : oppositePartValid4_0172 oppositeHistoryChunk0172 := by
  unfold oppositePartValid4_0172 oppositeHistoryChunk0172
  decide

def oppositePartValid5_0172 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 176768
  | _ => True

theorem oppositePart5_0172 : oppositePartValid5_0172 oppositeHistoryChunk0172 := by
  unfold oppositePartValid5_0172 oppositeHistoryChunk0172
  decide

def oppositePartValid6_0172 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 176896
  | _ => True

theorem oppositePart6_0172 : oppositePartValid6_0172 oppositeHistoryChunk0172 := by
  unfold oppositePartValid6_0172 oppositeHistoryChunk0172
  decide

def oppositePartValid7_0172 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 177024
  | _ => True

theorem oppositePart7_0172 : oppositePartValid7_0172 oppositeHistoryChunk0172 := by
  unfold oppositePartValid7_0172 oppositeHistoryChunk0172
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
