import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101888
  | _ => True

theorem outsideMarkerPart4_0099 : outsideMarkerPartValid4_0099 outsideHistoryChunk0099 := by
  unfold outsideMarkerPartValid4_0099 outsideHistoryChunk0099
  decide

def outsideMarkerPartValid5_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102016
  | _ => True

theorem outsideMarkerPart5_0099 : outsideMarkerPartValid5_0099 outsideHistoryChunk0099 := by
  unfold outsideMarkerPartValid5_0099 outsideHistoryChunk0099
  decide

def outsideMarkerPartValid6_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102144
  | _ => True

theorem outsideMarkerPart6_0099 : outsideMarkerPartValid6_0099 outsideHistoryChunk0099 := by
  unfold outsideMarkerPartValid6_0099 outsideHistoryChunk0099
  decide

def outsideMarkerPartValid7_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102272
  | _ => True

theorem outsideMarkerPart7_0099 : outsideMarkerPartValid7_0099 outsideHistoryChunk0099 := by
  unfold outsideMarkerPartValid7_0099 outsideHistoryChunk0099
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
