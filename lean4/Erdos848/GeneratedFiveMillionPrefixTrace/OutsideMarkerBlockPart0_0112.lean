import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0112

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114688
  | _ => True

theorem outsideMarkerPart0_0112 : outsideMarkerPartValid0_0112 outsideHistoryChunk0112 := by
  unfold outsideMarkerPartValid0_0112 outsideHistoryChunk0112
  decide

def outsideMarkerPartValid1_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114816
  | _ => True

theorem outsideMarkerPart1_0112 : outsideMarkerPartValid1_0112 outsideHistoryChunk0112 := by
  unfold outsideMarkerPartValid1_0112 outsideHistoryChunk0112
  decide

def outsideMarkerPartValid2_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114944
  | _ => True

theorem outsideMarkerPart2_0112 : outsideMarkerPartValid2_0112 outsideHistoryChunk0112 := by
  unfold outsideMarkerPartValid2_0112 outsideHistoryChunk0112
  decide

def outsideMarkerPartValid3_0112 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115072
  | _ => True

theorem outsideMarkerPart3_0112 : outsideMarkerPartValid3_0112 outsideHistoryChunk0112 := by
  unfold outsideMarkerPartValid3_0112 outsideHistoryChunk0112
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
