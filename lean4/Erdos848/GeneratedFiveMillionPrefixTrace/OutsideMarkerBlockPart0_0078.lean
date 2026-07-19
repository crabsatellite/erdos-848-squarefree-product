import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0078

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79872
  | _ => True

theorem outsideMarkerPart0_0078 : outsideMarkerPartValid0_0078 outsideHistoryChunk0078 := by
  unfold outsideMarkerPartValid0_0078 outsideHistoryChunk0078
  decide

def outsideMarkerPartValid1_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80000
  | _ => True

theorem outsideMarkerPart1_0078 : outsideMarkerPartValid1_0078 outsideHistoryChunk0078 := by
  unfold outsideMarkerPartValid1_0078 outsideHistoryChunk0078
  decide

def outsideMarkerPartValid2_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80128
  | _ => True

theorem outsideMarkerPart2_0078 : outsideMarkerPartValid2_0078 outsideHistoryChunk0078 := by
  unfold outsideMarkerPartValid2_0078 outsideHistoryChunk0078
  decide

def outsideMarkerPartValid3_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80256
  | _ => True

theorem outsideMarkerPart3_0078 : outsideMarkerPartValid3_0078 outsideHistoryChunk0078 := by
  unfold outsideMarkerPartValid3_0078 outsideHistoryChunk0078
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
