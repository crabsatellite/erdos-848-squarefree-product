import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0011

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid0_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart0_0011 : outsideLocalPartValid0_0011 outsideHistoryChunk0011 := by
  unfold outsideLocalPartValid0_0011 outsideHistoryChunk0011
  decide

def outsideLocalPartValid1_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart1_0011 : outsideLocalPartValid1_0011 outsideHistoryChunk0011 := by
  unfold outsideLocalPartValid1_0011 outsideHistoryChunk0011
  decide

def outsideLocalPartValid2_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart2_0011 : outsideLocalPartValid2_0011 outsideHistoryChunk0011 := by
  unfold outsideLocalPartValid2_0011 outsideHistoryChunk0011
  decide

def outsideLocalPartValid3_0011 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart3_0011 : outsideLocalPartValid3_0011 outsideHistoryChunk0011 := by
  unfold outsideLocalPartValid3_0011 outsideHistoryChunk0011
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
