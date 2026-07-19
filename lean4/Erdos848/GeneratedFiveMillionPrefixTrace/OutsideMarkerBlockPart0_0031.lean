import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0031

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31744
  | _ => True

theorem outsideMarkerPart0_0031 : outsideMarkerPartValid0_0031 outsideHistoryChunk0031 := by
  unfold outsideMarkerPartValid0_0031 outsideHistoryChunk0031
  decide

def outsideMarkerPartValid1_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31872
  | _ => True

theorem outsideMarkerPart1_0031 : outsideMarkerPartValid1_0031 outsideHistoryChunk0031 := by
  unfold outsideMarkerPartValid1_0031 outsideHistoryChunk0031
  decide

def outsideMarkerPartValid2_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32000
  | _ => True

theorem outsideMarkerPart2_0031 : outsideMarkerPartValid2_0031 outsideHistoryChunk0031 := by
  unfold outsideMarkerPartValid2_0031 outsideHistoryChunk0031
  decide

def outsideMarkerPartValid3_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32128
  | _ => True

theorem outsideMarkerPart3_0031 : outsideMarkerPartValid3_0031 outsideHistoryChunk0031 := by
  unfold outsideMarkerPartValid3_0031 outsideHistoryChunk0031
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
