import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0106

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108544
  | _ => True

theorem outsideMarkerPart0_0106 : outsideMarkerPartValid0_0106 outsideHistoryChunk0106 := by
  unfold outsideMarkerPartValid0_0106 outsideHistoryChunk0106
  decide

def outsideMarkerPartValid1_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108672
  | _ => True

theorem outsideMarkerPart1_0106 : outsideMarkerPartValid1_0106 outsideHistoryChunk0106 := by
  unfold outsideMarkerPartValid1_0106 outsideHistoryChunk0106
  decide

def outsideMarkerPartValid2_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108800
  | _ => True

theorem outsideMarkerPart2_0106 : outsideMarkerPartValid2_0106 outsideHistoryChunk0106 := by
  unfold outsideMarkerPartValid2_0106 outsideHistoryChunk0106
  decide

def outsideMarkerPartValid3_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108928
  | _ => True

theorem outsideMarkerPart3_0106 : outsideMarkerPartValid3_0106 outsideHistoryChunk0106 := by
  unfold outsideMarkerPartValid3_0106 outsideHistoryChunk0106
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
