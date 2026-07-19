import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0005

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5632
  | _ => True

theorem outsideMarkerPart4_0005 : outsideMarkerPartValid4_0005 outsideHistoryChunk0005 := by
  unfold outsideMarkerPartValid4_0005 outsideHistoryChunk0005
  decide

def outsideMarkerPartValid5_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5760
  | _ => True

theorem outsideMarkerPart5_0005 : outsideMarkerPartValid5_0005 outsideHistoryChunk0005 := by
  unfold outsideMarkerPartValid5_0005 outsideHistoryChunk0005
  decide

def outsideMarkerPartValid6_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5888
  | _ => True

theorem outsideMarkerPart6_0005 : outsideMarkerPartValid6_0005 outsideHistoryChunk0005 := by
  unfold outsideMarkerPartValid6_0005 outsideHistoryChunk0005
  decide

def outsideMarkerPartValid7_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6016
  | _ => True

theorem outsideMarkerPart7_0005 : outsideMarkerPartValid7_0005 outsideHistoryChunk0005 := by
  unfold outsideMarkerPartValid7_0005 outsideHistoryChunk0005
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
