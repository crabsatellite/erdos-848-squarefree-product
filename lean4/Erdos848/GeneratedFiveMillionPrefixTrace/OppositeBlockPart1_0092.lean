import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0092

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 94720
  | _ => True

theorem oppositePart4_0092 : oppositePartValid4_0092 oppositeHistoryChunk0092 := by
  unfold oppositePartValid4_0092 oppositeHistoryChunk0092
  decide

def oppositePartValid5_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 94848
  | _ => True

theorem oppositePart5_0092 : oppositePartValid5_0092 oppositeHistoryChunk0092 := by
  unfold oppositePartValid5_0092 oppositeHistoryChunk0092
  decide

def oppositePartValid6_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 94976
  | _ => True

theorem oppositePart6_0092 : oppositePartValid6_0092 oppositeHistoryChunk0092 := by
  unfold oppositePartValid6_0092 oppositeHistoryChunk0092
  decide

def oppositePartValid7_0092 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 95104
  | _ => True

theorem oppositePart7_0092 : oppositePartValid7_0092 oppositeHistoryChunk0092 := by
  unfold oppositePartValid7_0092 oppositeHistoryChunk0092
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
