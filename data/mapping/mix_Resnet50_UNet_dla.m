
Network Mix_Resnet50_UNet {
	Layer RESNET50_CONV1 {
		Type: CONV
		Stride { X: 2, Y: 2 }		
		Dimensions { K: 64, C: 3, R: 7, S: 7, Y:224, X:224 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_1_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 64, C: 64, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_1_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_1_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 256, C: 64, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}

	Layer RESNET50_CONV2_1_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 256, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_2_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 64, C: 256, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_2_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_2_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 256, C: 64, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_2_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 256, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_3_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 64, C: 256, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_3_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_3_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 256, C: 64, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV2_3_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 256, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_1_1 {
		Type: CONV
		Stride { X: 2, Y: 2 }		
		Dimensions { K: 128, C: 256, R: 1, S: 1, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_1_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_1_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 512, C: 128, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_1_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 512, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer RESNET50_CONV3_2_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 128, C: 256, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_2_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_2_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 512, C: 128, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_1_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 512, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_3_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 128, C: 256, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_3_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_3_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 512, C: 128, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_3_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 512, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer RESNET50_CONV3_4_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 128, C: 256, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_4_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_4_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 512, C: 128, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV3_4_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 512, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer RESNET50_CONV4_1_1 {
		Type: CONV
		Stride { X: 2, Y: 2 }
		Dimensions { K: 256, C: 512, R: 1, S: 1, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_1_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_1_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1024, C: 256, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_1_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer RESNET50_CONV4_2_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 256, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_2_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_2_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1024, C: 256, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_2_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer RESNET50_CONV4_3_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 256, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_3_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_3_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1024, C: 256, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_3_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer RESNET50_CONV4_4_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 256, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_4_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_4_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1024, C: 256, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_4_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer RESNET50_CONV4_5_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 256, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_5_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_5_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1024, C: 256, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_5_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}




	Layer RESNET50_CONV4_6_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 256, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_6_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_6_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1024, C: 256, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV4_6_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer RESNET50_CONV5_1_1 {
		Type: CONV
		Stride { X: 2, Y: 2 }
		Dimensions { K: 512, C: 1024, R: 1, S: 1, Y: 14, X: 14 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_1_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_1_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 2048, C: 512, R: 1, S: 1, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_1_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 2048, R: 1, S: 1, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_2_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 512, C: 2048, R: 1, S: 1, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_2_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_2_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 2048, C: 512, R: 1, S: 1, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_2_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 2048, R: 1, S: 1, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer RESNET50_CONV5_3_1 {
		Type: CONV
		Stride { X: 1, Y: 1 }
		Dimensions { K: 512, C: 2048, R: 1, S: 1, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_3_2 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_3_3 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 2048, C: 512, R: 1, S: 1, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_CONV5_3_Residual {
		Type: DSCONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1, C: 2048, R: 1, S: 1, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}


	Layer RESNET50_FC1000 {
		Type: CONV
		Stride { X: 1, Y: 1 }		
		Dimensions { K: 1000, C: 2048, R: 7, S: 7, Y: 7, X: 7 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
			TemporalMap(Sz(R),1) Y;
			TemporalMap(Sz(S),1) X;
			TemporalMap(Sz(R),Sz(R)) R;
			TemporalMap(Sz(S),Sz(S)) S;
		}
	}



	Layer UNET_CONV1_1 {
		Type: CONV
		Dimensions { K: 64, C:1, R: 3, S: 3, Y: 572, X: 572 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(7,7) R;
			TemporalMap(7,7) S;
			TemporalMap(7,1) Y;
			TemporalMap(7,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	

	Layer UNET_CONV1_2 {
		Type: CONV
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 570, X: 570 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV2_1 {
		Type: CONV
		Dimensions { K: 128, C: 64, R: 3, S: 3, Y: 284, X: 284 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV2_2 {
		Type: CONV
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 282, X: 282 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV3_1 {
		Type: CONV
		Dimensions { K: 256, C: 128, R: 3, S: 3, Y: 140, X: 140 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}


	Layer UNET_CONV3_2 {
		Type: CONV
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 138, X: 138 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV4_1 {
		Type: CONV
		Dimensions { K: 512, C: 256, R: 3, S: 3, Y: 68, X: 68 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}


	Layer UNET_CONV4_2 {
		Type: CONV
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 66, X: 66 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV5_1 {
		Type: CONV
		Dimensions { K: 1024, C: 512, R: 3, S: 3, Y: 32, X: 32 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}


	Layer UNET_CONV5_2 {
		Type: CONV
		Dimensions { K: 1024, C: 1024, R: 3, S: 3, Y: 30, X: 30 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer TRCONV1 {
		Type: TRCONV
		Dimensions { K: 512, C: 1024, R: 2, S: 2, Y: 28, X: 28 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(2,2) R;
			TemporalMap(2,2) S;
			TemporalMap(2,1) Y;
			TemporalMap(2,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}


	Layer UNET_CONV4_3 {
		Type: CONV
		Dimensions { K: 512, C: 1024, R: 3, S: 3, Y: 56, X: 56 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV4_4 {
		Type: CONV
		Dimensions { K: 512, C: 512, R: 3, S: 3, Y: 54, X: 54 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer TRCONV2 {
		Type: TRCONV
		Dimensions { K: 512, C: 512, R: 2, S: 2, Y: 52, X: 52 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(2,2) R;
			TemporalMap(2,2) S;
			TemporalMap(2,1) Y;
			TemporalMap(2,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV3_3 {
		Type: CONV
		Dimensions { K: 256, C: 512, R: 3, S: 3, Y: 104, X: 104 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}


	Layer UNET_CONV3_4 {
		Type: CONV
		Dimensions { K: 256, C: 256, R: 3, S: 3, Y: 102, X: 102 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer TRCONV3 {
		Type: TRCONV
		Dimensions { K: 128, C: 256, R: 2, S: 2, Y: 100, X: 100 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(2,2) R;
			TemporalMap(2,2) S;
			TemporalMap(2,1) Y;
			TemporalMap(2,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}


	Layer UNET_CONV2_3 {
		Type: CONV
		Dimensions { K: 128, C: 256, R: 3, S: 3, Y: 200, X: 200 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV2_4 {
		Type: CONV
		Dimensions { K: 128, C: 128, R: 3, S: 3, Y: 198, X: 198 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer TRCONV4 {
		Type: TRCONV
		Dimensions { K: 64, C: 128, R: 2, S: 2, Y: 196, X: 196 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(2,2) R;
			TemporalMap(2,2) S;
			TemporalMap(2,1) Y;
			TemporalMap(2,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV1_3 {
		Type: CONV
		Dimensions { K: 64, C: 128, R: 3, S: 3, Y: 392, X: 392 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}


	Layer UNET_CONV1_4 {
		Type: CONV
		Dimensions { K: 64, C: 64, R: 3, S: 3, Y: 390, X: 390 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(3,3) R;
			TemporalMap(3,3) S;
			TemporalMap(3,1) Y;
			TemporalMap(3,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}

	Layer UNET_CONV1_5 {
		Type: CONV
		Dimensions { K: 2, C: 64, R: 1, S: 1, Y: 388, X: 388 }
		Dataflow {
			SpatialMap(1,1) K;
			TemporalMap(64,64) C;
			TemporalMap(1,1) R;
			TemporalMap(1,1) S;
			TemporalMap(1,1) Y;
			TemporalMap(1,1) X;	
			Cluster(64, P);
			SpatialMap(1,1) C;
		}
	}
}
