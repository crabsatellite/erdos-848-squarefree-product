import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0096

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98816
  | _ => True

theorem outsideMarkerPart4_0096 : outsideMarkerPartValid4_0096 outsideHistoryChunk0096 := by
  unfold outsideMarkerPartValid4_0096 outsideHistoryChunk0096
  decide

def outsideMarkerPartValid5_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98944
  | _ => True

theorem outsideMarkerPart5_0096 : outsideMarkerPartValid5_0096 outsideHistoryChunk0096 := by
  unfold outsideMarkerPartValid5_0096 outsideHistoryChunk0096
  decide

def outsideMarkerPartValid6_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99072
  | _ => True

theorem outsideMarkerPart6_0096 : outsideMarkerPartValid6_0096 outsideHistoryChunk0096 := by
  unfold outsideMarkerPartValid6_0096 outsideHistoryChunk0096
  decide

def outsideMarkerPartValid7_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99200
  | _ => True

theorem outsideMarkerPart7_0096 : outsideMarkerPartValid7_0096 outsideHistoryChunk0096 := by
  unfold outsideMarkerPartValid7_0096 outsideHistoryChunk0096
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
