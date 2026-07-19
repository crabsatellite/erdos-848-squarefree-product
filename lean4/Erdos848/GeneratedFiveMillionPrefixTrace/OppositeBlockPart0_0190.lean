import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0190

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0190 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 194560
  | _ => True

theorem oppositePart0_0190 : oppositePartValid0_0190 oppositeHistoryChunk0190 := by
  unfold oppositePartValid0_0190 oppositeHistoryChunk0190
  decide

def oppositePartValid1_0190 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 194688
  | _ => True

theorem oppositePart1_0190 : oppositePartValid1_0190 oppositeHistoryChunk0190 := by
  unfold oppositePartValid1_0190 oppositeHistoryChunk0190
  decide

def oppositePartValid2_0190 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 194816
  | _ => True

theorem oppositePart2_0190 : oppositePartValid2_0190 oppositeHistoryChunk0190 := by
  unfold oppositePartValid2_0190 oppositeHistoryChunk0190
  decide

def oppositePartValid3_0190 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 194944
  | _ => True

theorem oppositePart3_0190 : oppositePartValid3_0190 oppositeHistoryChunk0190 := by
  unfold oppositePartValid3_0190 oppositeHistoryChunk0190
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
