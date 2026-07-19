import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0122

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125368
  | _ => True

theorem outsideMarkerPart4_0122 : outsideMarkerPartValid4_0122 outsideHistoryChunk0122 := by
  unfold outsideMarkerPartValid4_0122 outsideHistoryChunk0122
  decide

def outsideMarkerPartValid5_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125478
  | _ => True

theorem outsideMarkerPart5_0122 : outsideMarkerPartValid5_0122 outsideHistoryChunk0122 := by
  unfold outsideMarkerPartValid5_0122 outsideHistoryChunk0122
  decide

def outsideMarkerPartValid6_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125588
  | _ => True

theorem outsideMarkerPart6_0122 : outsideMarkerPartValid6_0122 outsideHistoryChunk0122 := by
  unfold outsideMarkerPartValid6_0122 outsideHistoryChunk0122
  decide

def outsideMarkerPartValid7_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125698
  | _ => True

theorem outsideMarkerPart7_0122 : outsideMarkerPartValid7_0122 outsideHistoryChunk0122 := by
  unfold outsideMarkerPartValid7_0122 outsideHistoryChunk0122
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
