import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0105

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid4_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart4_0105 : outsideLocalPartValid4_0105 outsideHistoryChunk0105 := by
  unfold outsideLocalPartValid4_0105 outsideHistoryChunk0105
  decide

def outsideLocalPartValid5_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart5_0105 : outsideLocalPartValid5_0105 outsideHistoryChunk0105 := by
  unfold outsideLocalPartValid5_0105 outsideHistoryChunk0105
  decide

def outsideLocalPartValid6_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart6_0105 : outsideLocalPartValid6_0105 outsideHistoryChunk0105 := by
  unfold outsideLocalPartValid6_0105 outsideHistoryChunk0105
  decide

def outsideLocalPartValid7_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart7_0105 : outsideLocalPartValid7_0105 outsideHistoryChunk0105 := by
  unfold outsideLocalPartValid7_0105 outsideHistoryChunk0105
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
