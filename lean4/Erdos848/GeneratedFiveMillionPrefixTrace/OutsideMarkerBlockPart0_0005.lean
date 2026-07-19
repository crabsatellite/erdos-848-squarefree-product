import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0005

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5120
  | _ => True

theorem outsideMarkerPart0_0005 : outsideMarkerPartValid0_0005 outsideHistoryChunk0005 := by
  unfold outsideMarkerPartValid0_0005 outsideHistoryChunk0005
  decide

def outsideMarkerPartValid1_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5248
  | _ => True

theorem outsideMarkerPart1_0005 : outsideMarkerPartValid1_0005 outsideHistoryChunk0005 := by
  unfold outsideMarkerPartValid1_0005 outsideHistoryChunk0005
  decide

def outsideMarkerPartValid2_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5376
  | _ => True

theorem outsideMarkerPart2_0005 : outsideMarkerPartValid2_0005 outsideHistoryChunk0005 := by
  unfold outsideMarkerPartValid2_0005 outsideHistoryChunk0005
  decide

def outsideMarkerPartValid3_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5504
  | _ => True

theorem outsideMarkerPart3_0005 : outsideMarkerPartValid3_0005 outsideHistoryChunk0005 := by
  unfold outsideMarkerPartValid3_0005 outsideHistoryChunk0005
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
