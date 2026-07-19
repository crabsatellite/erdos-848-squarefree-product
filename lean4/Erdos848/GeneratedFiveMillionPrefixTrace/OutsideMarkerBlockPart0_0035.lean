import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0035

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35840
  | _ => True

theorem outsideMarkerPart0_0035 : outsideMarkerPartValid0_0035 outsideHistoryChunk0035 := by
  unfold outsideMarkerPartValid0_0035 outsideHistoryChunk0035
  decide

def outsideMarkerPartValid1_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35968
  | _ => True

theorem outsideMarkerPart1_0035 : outsideMarkerPartValid1_0035 outsideHistoryChunk0035 := by
  unfold outsideMarkerPartValid1_0035 outsideHistoryChunk0035
  decide

def outsideMarkerPartValid2_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36096
  | _ => True

theorem outsideMarkerPart2_0035 : outsideMarkerPartValid2_0035 outsideHistoryChunk0035 := by
  unfold outsideMarkerPartValid2_0035 outsideHistoryChunk0035
  decide

def outsideMarkerPartValid3_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36224
  | _ => True

theorem outsideMarkerPart3_0035 : outsideMarkerPartValid3_0035 outsideHistoryChunk0035 := by
  unfold outsideMarkerPartValid3_0035 outsideHistoryChunk0035
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
