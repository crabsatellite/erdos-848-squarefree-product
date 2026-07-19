import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0021

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid4_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22016
  | _ => True

theorem outsideMarkerPart4_0021 : outsideMarkerPartValid4_0021 outsideHistoryChunk0021 := by
  unfold outsideMarkerPartValid4_0021 outsideHistoryChunk0021
  decide

def outsideMarkerPartValid5_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22144
  | _ => True

theorem outsideMarkerPart5_0021 : outsideMarkerPartValid5_0021 outsideHistoryChunk0021 := by
  unfold outsideMarkerPartValid5_0021 outsideHistoryChunk0021
  decide

def outsideMarkerPartValid6_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22272
  | _ => True

theorem outsideMarkerPart6_0021 : outsideMarkerPartValid6_0021 outsideHistoryChunk0021 := by
  unfold outsideMarkerPartValid6_0021 outsideHistoryChunk0021
  decide

def outsideMarkerPartValid7_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22400
  | _ => True

theorem outsideMarkerPart7_0021 : outsideMarkerPartValid7_0021 outsideHistoryChunk0021 := by
  unfold outsideMarkerPartValid7_0021 outsideHistoryChunk0021
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
