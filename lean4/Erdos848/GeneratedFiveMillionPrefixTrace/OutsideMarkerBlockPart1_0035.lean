import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0035

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36352
  | _ => True

theorem outsideMarkerPart4_0035 : outsideMarkerPartValid4_0035 outsideHistoryChunk0035 := by
  unfold outsideMarkerPartValid4_0035 outsideHistoryChunk0035
  decide

def outsideMarkerPartValid5_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36480
  | _ => True

theorem outsideMarkerPart5_0035 : outsideMarkerPartValid5_0035 outsideHistoryChunk0035 := by
  unfold outsideMarkerPartValid5_0035 outsideHistoryChunk0035
  decide

def outsideMarkerPartValid6_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36608
  | _ => True

theorem outsideMarkerPart6_0035 : outsideMarkerPartValid6_0035 outsideHistoryChunk0035 := by
  unfold outsideMarkerPartValid6_0035 outsideHistoryChunk0035
  decide

def outsideMarkerPartValid7_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36736
  | _ => True

theorem outsideMarkerPart7_0035 : outsideMarkerPartValid7_0035 outsideHistoryChunk0035 := by
  unfold outsideMarkerPartValid7_0035 outsideHistoryChunk0035
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
