import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid4_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart4_0099 : outsideLocalPartValid4_0099 outsideHistoryChunk0099 := by
  unfold outsideLocalPartValid4_0099 outsideHistoryChunk0099
  decide

def outsideLocalPartValid5_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart5_0099 : outsideLocalPartValid5_0099 outsideHistoryChunk0099 := by
  unfold outsideLocalPartValid5_0099 outsideHistoryChunk0099
  decide

def outsideLocalPartValid6_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart6_0099 : outsideLocalPartValid6_0099 outsideHistoryChunk0099 := by
  unfold outsideLocalPartValid6_0099 outsideHistoryChunk0099
  decide

def outsideLocalPartValid7_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart7_0099 : outsideLocalPartValid7_0099 outsideHistoryChunk0099 := by
  unfold outsideLocalPartValid7_0099 outsideHistoryChunk0099
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
