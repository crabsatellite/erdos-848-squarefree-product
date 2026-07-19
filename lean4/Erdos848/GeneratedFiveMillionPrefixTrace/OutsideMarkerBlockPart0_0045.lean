import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0045

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46080
  | _ => True

theorem outsideMarkerPart0_0045 : outsideMarkerPartValid0_0045 outsideHistoryChunk0045 := by
  unfold outsideMarkerPartValid0_0045 outsideHistoryChunk0045
  decide

def outsideMarkerPartValid1_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46208
  | _ => True

theorem outsideMarkerPart1_0045 : outsideMarkerPartValid1_0045 outsideHistoryChunk0045 := by
  unfold outsideMarkerPartValid1_0045 outsideHistoryChunk0045
  decide

def outsideMarkerPartValid2_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46336
  | _ => True

theorem outsideMarkerPart2_0045 : outsideMarkerPartValid2_0045 outsideHistoryChunk0045 := by
  unfold outsideMarkerPartValid2_0045 outsideHistoryChunk0045
  decide

def outsideMarkerPartValid3_0045 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46464
  | _ => True

theorem outsideMarkerPart3_0045 : outsideMarkerPartValid3_0045 outsideHistoryChunk0045 := by
  unfold outsideMarkerPartValid3_0045 outsideHistoryChunk0045
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
