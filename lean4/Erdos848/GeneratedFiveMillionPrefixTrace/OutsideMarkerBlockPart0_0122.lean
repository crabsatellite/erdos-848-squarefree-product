import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0122

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124928
  | _ => True

theorem outsideMarkerPart0_0122 : outsideMarkerPartValid0_0122 outsideHistoryChunk0122 := by
  unfold outsideMarkerPartValid0_0122 outsideHistoryChunk0122
  decide

def outsideMarkerPartValid1_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125038
  | _ => True

theorem outsideMarkerPart1_0122 : outsideMarkerPartValid1_0122 outsideHistoryChunk0122 := by
  unfold outsideMarkerPartValid1_0122 outsideHistoryChunk0122
  decide

def outsideMarkerPartValid2_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125148
  | _ => True

theorem outsideMarkerPart2_0122 : outsideMarkerPartValid2_0122 outsideHistoryChunk0122 := by
  unfold outsideMarkerPartValid2_0122 outsideHistoryChunk0122
  decide

def outsideMarkerPartValid3_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125258
  | _ => True

theorem outsideMarkerPart3_0122 : outsideMarkerPartValid3_0122 outsideHistoryChunk0122 := by
  unfold outsideMarkerPartValid3_0122 outsideHistoryChunk0122
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
