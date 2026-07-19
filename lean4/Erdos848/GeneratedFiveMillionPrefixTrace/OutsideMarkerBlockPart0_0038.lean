import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0038

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38912
  | _ => True

theorem outsideMarkerPart0_0038 : outsideMarkerPartValid0_0038 outsideHistoryChunk0038 := by
  unfold outsideMarkerPartValid0_0038 outsideHistoryChunk0038
  decide

def outsideMarkerPartValid1_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39040
  | _ => True

theorem outsideMarkerPart1_0038 : outsideMarkerPartValid1_0038 outsideHistoryChunk0038 := by
  unfold outsideMarkerPartValid1_0038 outsideHistoryChunk0038
  decide

def outsideMarkerPartValid2_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39168
  | _ => True

theorem outsideMarkerPart2_0038 : outsideMarkerPartValid2_0038 outsideHistoryChunk0038 := by
  unfold outsideMarkerPartValid2_0038 outsideHistoryChunk0038
  decide

def outsideMarkerPartValid3_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39296
  | _ => True

theorem outsideMarkerPart3_0038 : outsideMarkerPartValid3_0038 outsideHistoryChunk0038 := by
  unfold outsideMarkerPartValid3_0038 outsideHistoryChunk0038
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
