import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0001

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid0_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart0_0001 : outsideLocalPartValid0_0001 outsideHistoryChunk0001 := by
  unfold outsideLocalPartValid0_0001 outsideHistoryChunk0001
  decide

def outsideLocalPartValid1_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart1_0001 : outsideLocalPartValid1_0001 outsideHistoryChunk0001 := by
  unfold outsideLocalPartValid1_0001 outsideHistoryChunk0001
  decide

def outsideLocalPartValid2_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart2_0001 : outsideLocalPartValid2_0001 outsideHistoryChunk0001 := by
  unfold outsideLocalPartValid2_0001 outsideHistoryChunk0001
  decide

def outsideLocalPartValid3_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart3_0001 : outsideLocalPartValid3_0001 outsideHistoryChunk0001 := by
  unfold outsideLocalPartValid3_0001 outsideHistoryChunk0001
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
