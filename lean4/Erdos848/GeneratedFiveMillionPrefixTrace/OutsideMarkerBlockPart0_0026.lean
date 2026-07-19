import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0026

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26624
  | _ => True

theorem outsideMarkerPart0_0026 : outsideMarkerPartValid0_0026 outsideHistoryChunk0026 := by
  unfold outsideMarkerPartValid0_0026 outsideHistoryChunk0026
  decide

def outsideMarkerPartValid1_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26752
  | _ => True

theorem outsideMarkerPart1_0026 : outsideMarkerPartValid1_0026 outsideHistoryChunk0026 := by
  unfold outsideMarkerPartValid1_0026 outsideHistoryChunk0026
  decide

def outsideMarkerPartValid2_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26880
  | _ => True

theorem outsideMarkerPart2_0026 : outsideMarkerPartValid2_0026 outsideHistoryChunk0026 := by
  unfold outsideMarkerPartValid2_0026 outsideHistoryChunk0026
  decide

def outsideMarkerPartValid3_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27008
  | _ => True

theorem outsideMarkerPart3_0026 : outsideMarkerPartValid3_0026 outsideHistoryChunk0026 := by
  unfold outsideMarkerPartValid3_0026 outsideHistoryChunk0026
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
