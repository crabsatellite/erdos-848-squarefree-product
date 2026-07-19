import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0015

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15360
  | _ => True

theorem outsideMarkerPart0_0015 : outsideMarkerPartValid0_0015 outsideHistoryChunk0015 := by
  unfold outsideMarkerPartValid0_0015 outsideHistoryChunk0015
  decide

def outsideMarkerPartValid1_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15488
  | _ => True

theorem outsideMarkerPart1_0015 : outsideMarkerPartValid1_0015 outsideHistoryChunk0015 := by
  unfold outsideMarkerPartValid1_0015 outsideHistoryChunk0015
  decide

def outsideMarkerPartValid2_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15616
  | _ => True

theorem outsideMarkerPart2_0015 : outsideMarkerPartValid2_0015 outsideHistoryChunk0015 := by
  unfold outsideMarkerPartValid2_0015 outsideHistoryChunk0015
  decide

def outsideMarkerPartValid3_0015 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15744
  | _ => True

theorem outsideMarkerPart3_0015 : outsideMarkerPartValid3_0015 outsideHistoryChunk0015 := by
  unfold outsideMarkerPartValid3_0015 outsideHistoryChunk0015
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
