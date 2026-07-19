import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0034

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34816
  | _ => True

theorem outsideMarkerPart0_0034 : outsideMarkerPartValid0_0034 outsideHistoryChunk0034 := by
  unfold outsideMarkerPartValid0_0034 outsideHistoryChunk0034
  decide

def outsideMarkerPartValid1_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34944
  | _ => True

theorem outsideMarkerPart1_0034 : outsideMarkerPartValid1_0034 outsideHistoryChunk0034 := by
  unfold outsideMarkerPartValid1_0034 outsideHistoryChunk0034
  decide

def outsideMarkerPartValid2_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35072
  | _ => True

theorem outsideMarkerPart2_0034 : outsideMarkerPartValid2_0034 outsideHistoryChunk0034 := by
  unfold outsideMarkerPartValid2_0034 outsideHistoryChunk0034
  decide

def outsideMarkerPartValid3_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35200
  | _ => True

theorem outsideMarkerPart3_0034 : outsideMarkerPartValid3_0034 outsideHistoryChunk0034 := by
  unfold outsideMarkerPartValid3_0034 outsideHistoryChunk0034
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
