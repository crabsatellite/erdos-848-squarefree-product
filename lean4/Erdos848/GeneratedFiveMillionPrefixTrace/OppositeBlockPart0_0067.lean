import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0067

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 68608
  | _ => True

theorem oppositePart0_0067 : oppositePartValid0_0067 oppositeHistoryChunk0067 := by
  unfold oppositePartValid0_0067 oppositeHistoryChunk0067
  decide

def oppositePartValid1_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 68736
  | _ => True

theorem oppositePart1_0067 : oppositePartValid1_0067 oppositeHistoryChunk0067 := by
  unfold oppositePartValid1_0067 oppositeHistoryChunk0067
  decide

def oppositePartValid2_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 68864
  | _ => True

theorem oppositePart2_0067 : oppositePartValid2_0067 oppositeHistoryChunk0067 := by
  unfold oppositePartValid2_0067 oppositeHistoryChunk0067
  decide

def oppositePartValid3_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 68992
  | _ => True

theorem oppositePart3_0067 : oppositePartValid3_0067 oppositeHistoryChunk0067 := by
  unfold oppositePartValid3_0067 oppositeHistoryChunk0067
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
