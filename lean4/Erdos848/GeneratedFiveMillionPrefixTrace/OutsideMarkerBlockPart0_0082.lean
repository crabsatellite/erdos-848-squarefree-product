import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0082

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0082 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83968
  | _ => True

theorem outsideMarkerPart0_0082 : outsideMarkerPartValid0_0082 outsideHistoryChunk0082 := by
  unfold outsideMarkerPartValid0_0082 outsideHistoryChunk0082
  decide

def outsideMarkerPartValid1_0082 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84096
  | _ => True

theorem outsideMarkerPart1_0082 : outsideMarkerPartValid1_0082 outsideHistoryChunk0082 := by
  unfold outsideMarkerPartValid1_0082 outsideHistoryChunk0082
  decide

def outsideMarkerPartValid2_0082 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84224
  | _ => True

theorem outsideMarkerPart2_0082 : outsideMarkerPartValid2_0082 outsideHistoryChunk0082 := by
  unfold outsideMarkerPartValid2_0082 outsideHistoryChunk0082
  decide

def outsideMarkerPartValid3_0082 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84352
  | _ => True

theorem outsideMarkerPart3_0082 : outsideMarkerPartValid3_0082 outsideHistoryChunk0082 := by
  unfold outsideMarkerPartValid3_0082 outsideHistoryChunk0082
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
