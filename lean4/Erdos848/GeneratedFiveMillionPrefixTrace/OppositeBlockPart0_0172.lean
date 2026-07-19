import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0172

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0172 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 176128
  | _ => True

theorem oppositePart0_0172 : oppositePartValid0_0172 oppositeHistoryChunk0172 := by
  unfold oppositePartValid0_0172 oppositeHistoryChunk0172
  decide

def oppositePartValid1_0172 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 176256
  | _ => True

theorem oppositePart1_0172 : oppositePartValid1_0172 oppositeHistoryChunk0172 := by
  unfold oppositePartValid1_0172 oppositeHistoryChunk0172
  decide

def oppositePartValid2_0172 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 176384
  | _ => True

theorem oppositePart2_0172 : oppositePartValid2_0172 oppositeHistoryChunk0172 := by
  unfold oppositePartValid2_0172 oppositeHistoryChunk0172
  decide

def oppositePartValid3_0172 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 176512
  | _ => True

theorem oppositePart3_0172 : oppositePartValid3_0172 oppositeHistoryChunk0172 := by
  unfold oppositePartValid3_0172 oppositeHistoryChunk0172
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
