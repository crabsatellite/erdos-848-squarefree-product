import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0090

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid0_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart0_0090 : outsideLocalPartValid0_0090 outsideHistoryChunk0090 := by
  unfold outsideLocalPartValid0_0090 outsideHistoryChunk0090
  decide

def outsideLocalPartValid1_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart1_0090 : outsideLocalPartValid1_0090 outsideHistoryChunk0090 := by
  unfold outsideLocalPartValid1_0090 outsideHistoryChunk0090
  decide

def outsideLocalPartValid2_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart2_0090 : outsideLocalPartValid2_0090 outsideHistoryChunk0090 := by
  unfold outsideLocalPartValid2_0090 outsideHistoryChunk0090
  decide

def outsideLocalPartValid3_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart3_0090 : outsideLocalPartValid3_0090 outsideHistoryChunk0090 := by
  unfold outsideLocalPartValid3_0090 outsideHistoryChunk0090
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
