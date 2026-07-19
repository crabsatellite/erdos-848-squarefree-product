import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0047

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 48128
  | _ => True

theorem oppositePart0_0047 : oppositePartValid0_0047 oppositeHistoryChunk0047 := by
  unfold oppositePartValid0_0047 oppositeHistoryChunk0047
  decide

def oppositePartValid1_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 48256
  | _ => True

theorem oppositePart1_0047 : oppositePartValid1_0047 oppositeHistoryChunk0047 := by
  unfold oppositePartValid1_0047 oppositeHistoryChunk0047
  decide

def oppositePartValid2_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 48384
  | _ => True

theorem oppositePart2_0047 : oppositePartValid2_0047 oppositeHistoryChunk0047 := by
  unfold oppositePartValid2_0047 oppositeHistoryChunk0047
  decide

def oppositePartValid3_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 48512
  | _ => True

theorem oppositePart3_0047 : oppositePartValid3_0047 oppositeHistoryChunk0047 := by
  unfold oppositePartValid3_0047 oppositeHistoryChunk0047
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
