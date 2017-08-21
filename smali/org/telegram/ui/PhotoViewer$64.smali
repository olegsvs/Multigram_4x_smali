.class Lorg/telegram/ui/PhotoViewer$64;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->processOpenVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 6547
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$64;->val$videoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 6550
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_1

    .line 6699
    :cond_0
    :goto_0
    return-void

    .line 6553
    :cond_1
    const/16 v24, 0x0

    .line 6554
    .local v24, "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v11, 0x1

    .line 6556
    .local v11, "isAvc":Z
    :try_start_0
    new-instance v14, Lcom/coremedia/iso/IsoFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->val$videoPath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 6557
    .local v14, "isoFile":Lcom/coremedia/iso/IsoFile;
    const-string/jumbo v26, "/moov/trak/"

    move-object/from16 v0, v26

    invoke-static {v14, v0}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 6558
    .local v8, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/4 v13, 0x1

    .line 6560
    .local v13, "isMp4A":Z
    const-string/jumbo v26, "/moov/trak/mdia/minf/stbl/stsd/mp4a/"

    move-object/from16 v0, v26

    invoke-static {v14, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 6561
    .local v7, "boxTest":Lcom/coremedia/iso/boxes/Box;
    if-nez v7, :cond_2

    .line 6562
    const/4 v13, 0x0

    .line 6565
    :cond_2
    if-eqz v13, :cond_0

    .line 6569
    const-string/jumbo v26, "/moov/trak/mdia/minf/stbl/stsd/avc1/"

    move-object/from16 v0, v26

    invoke-static {v14, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 6570
    if-nez v7, :cond_3

    .line 6571
    const/4 v11, 0x0

    .line 6574
    :cond_3
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v5, v0, :cond_7

    .line 6575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 6578
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/Box;

    .line 6579
    .local v6, "box":Lcom/coremedia/iso/boxes/Box;
    move-object v0, v6

    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v21, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6580
    .local v21, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    const-wide/16 v18, 0x0

    .line 6581
    .local v18, "sampleSizes":J
    const-wide/16 v22, 0x0

    .line 6583
    .local v22, "trackBitrate":J
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v15

    .line 6584
    .local v15, "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v16

    .line 6585
    .local v16, "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v17

    .line 6586
    .local v17, "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v20

    .line 6587
    .local v20, "sizes":[J
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v4, v0, :cond_4

    .line 6588
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 6591
    aget-wide v26, v20, v4

    add-long v18, v18, v26

    .line 6587
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6593
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getDuration()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v26 .. v27}, Lorg/telegram/ui/PhotoViewer;->access$6802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 6594
    const-wide/16 v26, 0x8

    mul-long v26, v26, v18

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PhotoViewer;->access$6800(Lorg/telegram/ui/PhotoViewer;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v27

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 6598
    .end local v4    # "a":I
    .end local v15    # "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    .end local v16    # "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v17    # "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    .end local v20    # "sizes":[J
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 6601
    invoke-virtual/range {v21 .. v21}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v10

    .line 6602
    .local v10, "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_6

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_6

    .line 6603
    move-object/from16 v24, v10

    .line 6604
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v27, v0

    const-wide/32 v28, 0x186a0

    div-long v28, v22, v28

    const-wide/32 v30, 0x186a0

    mul-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lorg/telegram/ui/PhotoViewer;->access$12902(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v27

    invoke-static/range {v26 .. v27}, Lorg/telegram/ui/PhotoViewer;->access$12802(Lorg/telegram/ui/PhotoViewer;I)I

    .line 6605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v26

    const v27, 0xdbba0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    .line 6606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    const v27, 0xdbba0

    invoke-static/range {v26 .. v27}, Lorg/telegram/ui/PhotoViewer;->access$12902(Lorg/telegram/ui/PhotoViewer;I)I

    .line 6608
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PhotoViewer;->access$13000(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v28

    add-long v28, v28, v18

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$13002(Lorg/telegram/ui/PhotoViewer;J)J

    .line 6574
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 6595
    .end local v10    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_0
    move-exception v9

    .line 6596
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 6613
    .end local v5    # "b":I
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "isMp4A":Z
    .end local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v18    # "sampleSizes":J
    .end local v21    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v22    # "trackBitrate":J
    :catch_1
    move-exception v9

    .line 6614
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 6610
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "b":I
    .restart local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .restart local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v10    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .restart local v13    # "isMp4A":Z
    .restart local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v18    # "sampleSizes":J
    .restart local v21    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .restart local v22    # "trackBitrate":J
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PhotoViewer;->access$13100(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v28

    add-long v28, v28, v18

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$13102(Lorg/telegram/ui/PhotoViewer;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 6617
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v10    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .end local v18    # "sampleSizes":J
    .end local v21    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v22    # "trackBitrate":J
    :cond_7
    if-eqz v24, :cond_0

    .line 6620
    move v12, v11

    .line 6621
    .local v12, "isAvcFinal":Z
    move-object/from16 v25, v24

    .line 6622
    .local v25, "trackHeaderBoxFinal":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 6625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lorg/telegram/ui/PhotoViewer;->access$12702(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6626
    new-instance v26, Lorg/telegram/ui/PhotoViewer$64$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v12}, Lorg/telegram/ui/PhotoViewer$64$1;-><init>(Lorg/telegram/ui/PhotoViewer$64;Lcom/coremedia/iso/boxes/TrackHeaderBox;Z)V

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
