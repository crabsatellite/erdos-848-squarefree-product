import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0000

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 0
  | _ => True

theorem outsideMarkerPart0_0000 : outsideMarkerPartValid0_0000 outsideHistoryChunk0000 := by
  unfold outsideMarkerPartValid0_0000 outsideHistoryChunk0000
  decide

def outsideMarkerPartValid1_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 128
  | _ => True

theorem outsideMarkerPart1_0000 : outsideMarkerPartValid1_0000 outsideHistoryChunk0000 := by
  unfold outsideMarkerPartValid1_0000 outsideHistoryChunk0000
  decide

def outsideMarkerPartValid2_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 256
  | _ => True

theorem outsideMarkerPart2_0000 : outsideMarkerPartValid2_0000 outsideHistoryChunk0000 := by
  unfold outsideMarkerPartValid2_0000 outsideHistoryChunk0000
  decide

def outsideMarkerPartValid3_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 384
  | _ => True

theorem outsideMarkerPart3_0000 : outsideMarkerPartValid3_0000 outsideHistoryChunk0000 := by
  unfold outsideMarkerPartValid3_0000 outsideHistoryChunk0000
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
