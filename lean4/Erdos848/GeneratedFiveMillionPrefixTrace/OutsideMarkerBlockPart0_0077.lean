import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0077

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78848
  | _ => True

theorem outsideMarkerPart0_0077 : outsideMarkerPartValid0_0077 outsideHistoryChunk0077 := by
  unfold outsideMarkerPartValid0_0077 outsideHistoryChunk0077
  decide

def outsideMarkerPartValid1_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78976
  | _ => True

theorem outsideMarkerPart1_0077 : outsideMarkerPartValid1_0077 outsideHistoryChunk0077 := by
  unfold outsideMarkerPartValid1_0077 outsideHistoryChunk0077
  decide

def outsideMarkerPartValid2_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79104
  | _ => True

theorem outsideMarkerPart2_0077 : outsideMarkerPartValid2_0077 outsideHistoryChunk0077 := by
  unfold outsideMarkerPartValid2_0077 outsideHistoryChunk0077
  decide

def outsideMarkerPartValid3_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79232
  | _ => True

theorem outsideMarkerPart3_0077 : outsideMarkerPartValid3_0077 outsideHistoryChunk0077 := by
  unfold outsideMarkerPartValid3_0077 outsideHistoryChunk0077
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
