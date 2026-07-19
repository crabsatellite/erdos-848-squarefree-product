import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0028

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28672
  | _ => True

theorem outsideMarkerPart0_0028 : outsideMarkerPartValid0_0028 outsideHistoryChunk0028 := by
  unfold outsideMarkerPartValid0_0028 outsideHistoryChunk0028
  decide

def outsideMarkerPartValid1_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28800
  | _ => True

theorem outsideMarkerPart1_0028 : outsideMarkerPartValid1_0028 outsideHistoryChunk0028 := by
  unfold outsideMarkerPartValid1_0028 outsideHistoryChunk0028
  decide

def outsideMarkerPartValid2_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28928
  | _ => True

theorem outsideMarkerPart2_0028 : outsideMarkerPartValid2_0028 outsideHistoryChunk0028 := by
  unfold outsideMarkerPartValid2_0028 outsideHistoryChunk0028
  decide

def outsideMarkerPartValid3_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29056
  | _ => True

theorem outsideMarkerPart3_0028 : outsideMarkerPartValid3_0028 outsideHistoryChunk0028 := by
  unfold outsideMarkerPartValid3_0028 outsideHistoryChunk0028
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
