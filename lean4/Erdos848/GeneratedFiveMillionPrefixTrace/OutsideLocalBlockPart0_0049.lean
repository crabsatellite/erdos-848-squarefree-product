import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0049

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid0_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart0_0049 : outsideLocalPartValid0_0049 outsideHistoryChunk0049 := by
  unfold outsideLocalPartValid0_0049 outsideHistoryChunk0049
  decide

def outsideLocalPartValid1_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart1_0049 : outsideLocalPartValid1_0049 outsideHistoryChunk0049 := by
  unfold outsideLocalPartValid1_0049 outsideHistoryChunk0049
  decide

def outsideLocalPartValid2_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart2_0049 : outsideLocalPartValid2_0049 outsideHistoryChunk0049 := by
  unfold outsideLocalPartValid2_0049 outsideHistoryChunk0049
  decide

def outsideLocalPartValid3_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart3_0049 : outsideLocalPartValid3_0049 outsideHistoryChunk0049 := by
  unfold outsideLocalPartValid3_0049 outsideHistoryChunk0049
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
