import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0004

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4096
  | _ => True

theorem outsideMarkerPart0_0004 : outsideMarkerPartValid0_0004 outsideHistoryChunk0004 := by
  unfold outsideMarkerPartValid0_0004 outsideHistoryChunk0004
  decide

def outsideMarkerPartValid1_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4224
  | _ => True

theorem outsideMarkerPart1_0004 : outsideMarkerPartValid1_0004 outsideHistoryChunk0004 := by
  unfold outsideMarkerPartValid1_0004 outsideHistoryChunk0004
  decide

def outsideMarkerPartValid2_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4352
  | _ => True

theorem outsideMarkerPart2_0004 : outsideMarkerPartValid2_0004 outsideHistoryChunk0004 := by
  unfold outsideMarkerPartValid2_0004 outsideHistoryChunk0004
  decide

def outsideMarkerPartValid3_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4480
  | _ => True

theorem outsideMarkerPart3_0004 : outsideMarkerPartValid3_0004 outsideHistoryChunk0004 := by
  unfold outsideMarkerPartValid3_0004 outsideHistoryChunk0004
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
