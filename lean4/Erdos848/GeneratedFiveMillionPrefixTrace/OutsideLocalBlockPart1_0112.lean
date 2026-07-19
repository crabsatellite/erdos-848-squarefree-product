import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0112

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid4_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart4_0112 : outsideLocalPartValid4_0112 outsideHistoryChunk0112 := by
  unfold outsideLocalPartValid4_0112 outsideHistoryChunk0112
  decide

def outsideLocalPartValid5_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart5_0112 : outsideLocalPartValid5_0112 outsideHistoryChunk0112 := by
  unfold outsideLocalPartValid5_0112 outsideHistoryChunk0112
  decide

def outsideLocalPartValid6_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart6_0112 : outsideLocalPartValid6_0112 outsideHistoryChunk0112 := by
  unfold outsideLocalPartValid6_0112 outsideHistoryChunk0112
  decide

def outsideLocalPartValid7_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart7_0112 : outsideLocalPartValid7_0112 outsideHistoryChunk0112 := by
  unfold outsideLocalPartValid7_0112 outsideHistoryChunk0112
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
