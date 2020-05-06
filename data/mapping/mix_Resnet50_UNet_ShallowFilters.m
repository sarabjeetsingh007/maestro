
Network Mix_Resnet50_UNet {
	Layer RESNET50_CONV1 {
		Type: CONV
		Stride { X: 2, Y: 2 }		
		Dimensions { K: 64, C: 3, R: 7, S: 7, Y:224, X:224 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(14,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}

	}


	Layer UNET_CONV1_1 {
		Type: CONV
		Dimensions { K: 64, C:1, R: 3, S: 3, Y: 572, X: 572 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(10,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}

	}

	Layer UNET_CONV1_2 {
		Type: CONV
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 570, X: 570 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(10,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}

	}

	Layer UNET_CONV2_1 {
		Type: CONV
		Dimensions { K: 128, C: 64, R: 3, S: 3, Y: 284, X: 284 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(10,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}


	}

	Layer UNET_CONV2_2 {
		Type: CONV
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 282, X: 282 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(10,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}


	}


	Layer TRCONV3 {
		Type: TRCONV
		Dimensions { K: 128, C: 256, R: 2, S: 2, Y: 100, X: 100 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(9,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}
	}


	Layer UNET_CONV2_3 {
		Type: CONV
		Dimensions { K: 128, C: 256, R: 3, S: 3, Y: 200, X: 200 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(10,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}

	}

	Layer UNET_CONV2_4 {
		Type: CONV
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 198, X: 198 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(10,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}
	}

	Layer TRCONV4 {
		Type: TRCONV
		Dimensions { K: 64, C: 128, R: 2, S: 2, Y: 196, X: 196 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(9,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}

	}

	Layer UNET_CONV1_3 {
		Type: CONV
		Dimensions { K: 64, C: 128, R: 3, S: 3, Y: 392, X: 392 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(10,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}

	}


	Layer UNET_CONV1_4 {
		Type: CONV
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 390, X: 390 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(10,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}

	}

	Layer UNET_CONV1_5 {
		Type: CONV
		Dimensions { K: 2, C: 64, R: 1, S: 1, Y: 388, X: 388 }
		Dataflow {
			TemporalMap(1,1) K;
			TemporalMap(1,1) C;
			SpatialMap(Sz(R), 1) Y;
			TemporalMap(10,8) X;
			Cluster(8, P);
			SpatialMap(Sz(S), 1) X;
			TemporalMap(Sz(R), Sz(R)) R;
			TemporalMap(Sz(R), Sz(R)) S;			
		}

	}

}
