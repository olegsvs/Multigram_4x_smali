.class Lorg/telegram/ui/PhotoViewer$64$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$64;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$64;

.field final synthetic val$isAvcFinal:Z

.field final synthetic val$trackHeaderBoxFinal:Lcom/coremedia/iso/boxes/TrackHeaderBox;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$64;Lcom/coremedia/iso/boxes/TrackHeaderBox;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$64;

    .prologue
    .line 6626
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$64$1;->val$trackHeaderBoxFinal:Lcom/coremedia/iso/boxes/TrackHeaderBox;

    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer$64$1;->val$isAvcFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x350

    const/16 v13, 0x280

    const/16 v12, 0x1e0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6629
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 6697
    :cond_0
    :goto_0
    return-void

    .line 6632
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->val$trackHeaderBoxFinal:Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v2

    .line 6633
    .local v2, "matrix":Lcom/googlecode/mp4parser/util/Matrix;
    sget-object v5, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6634
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/16 v8, 0x5a

    # setter for: Lorg/telegram/ui/PhotoViewer;->rotationValue:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$13202(Lorg/telegram/ui/PhotoViewer;I)I

    .line 6642
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v8, v8, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$64$1;->val$trackHeaderBoxFinal:Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v10

    double-to-int v9, v10

    # setter for: Lorg/telegram/ui/PhotoViewer;->originalWidth:I
    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoViewer;->access$13402(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v8

    # setter for: Lorg/telegram/ui/PhotoViewer;->resultWidth:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$13302(Lorg/telegram/ui/PhotoViewer;I)I

    .line 6643
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v8, v8, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$64$1;->val$trackHeaderBoxFinal:Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v10

    double-to-int v9, v10

    # setter for: Lorg/telegram/ui/PhotoViewer;->originalHeight:I
    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoViewer;->access$12302(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v8

    # setter for: Lorg/telegram/ui/PhotoViewer;->resultHeight:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$13502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 6645
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->val$isAvcFinal:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->resultWidth:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$13300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v8, v8, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalWidth:I
    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$13400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->resultHeight:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$13500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v8, v8, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalHeight:I
    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$12300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v8

    if-eq v5, v8, :cond_0

    .line 6649
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v8, v8, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoDuration:F
    invoke-static {v8}, Lorg/telegram/ui/PhotoViewer;->access$6800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    # setter for: Lorg/telegram/ui/PhotoViewer;->videoDuration:F
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$6802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 6651
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "mainconfig"

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 6652
    .local v4, "preferences":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-string/jumbo v8, "compress_video2"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    # setter for: Lorg/telegram/ui/PhotoViewer;->selectedCompression:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$6302(Lorg/telegram/ui/PhotoViewer;I)I

    .line 6653
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalWidth:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$13400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    const/16 v8, 0x500

    if-gt v5, v8, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalHeight:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$12300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    const/16 v8, 0x500

    if-le v5, v8, :cond_8

    .line 6654
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v8, 0x5

    # setter for: Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$12202(Lorg/telegram/ui/PhotoViewer;I)I

    .line 6664
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$13600(Lorg/telegram/ui/PhotoViewer;)V

    .line 6666
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v8, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$12200(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    if-le v5, v6, :cond_f

    move v5, v6

    :goto_3
    # invokes: Lorg/telegram/ui/PhotoViewer;->setCompressItemEnabled(ZZ)V
    invoke-static {v8, v5, v6}, Lorg/telegram/ui/PhotoViewer;->access$13700(Lorg/telegram/ui/PhotoViewer;ZZ)V

    .line 6667
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-ge v5, v8, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$13800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 6669
    :try_start_0
    const-string/jumbo v5, "video/avc"

    invoke-static {v5}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 6670
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    if-nez v0, :cond_10

    .line 6671
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v8, 0x0

    const/4 v9, 0x1

    # invokes: Lorg/telegram/ui/PhotoViewer;->setCompressItemEnabled(ZZ)V
    invoke-static {v5, v8, v9}, Lorg/telegram/ui/PhotoViewer;->access$13700(Lorg/telegram/ui/PhotoViewer;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6693
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_4
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$12500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->invalidate()V

    .line 6695
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$6900(Lorg/telegram/ui/PhotoViewer;)V

    .line 6696
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer;->updateMuteButton()V

    goto/16 :goto_0

    .line 6635
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    sget-object v5, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6636
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/16 v8, 0xb4

    # setter for: Lorg/telegram/ui/PhotoViewer;->rotationValue:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$13202(Lorg/telegram/ui/PhotoViewer;I)I

    goto/16 :goto_1

    .line 6637
    :cond_6
    sget-object v5, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6638
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/16 v8, 0x10e

    # setter for: Lorg/telegram/ui/PhotoViewer;->rotationValue:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$13202(Lorg/telegram/ui/PhotoViewer;I)I

    goto/16 :goto_1

    .line 6640
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->rotationValue:I
    invoke-static {v5, v7}, Lorg/telegram/ui/PhotoViewer;->access$13202(Lorg/telegram/ui/PhotoViewer;I)I

    goto/16 :goto_1

    .line 6655
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalWidth:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$13400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    if-gt v5, v14, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalHeight:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$12300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    if-le v5, v14, :cond_a

    .line 6656
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v8, 0x4

    # setter for: Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$12202(Lorg/telegram/ui/PhotoViewer;I)I

    goto/16 :goto_2

    .line 6657
    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalWidth:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$13400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    if-gt v5, v13, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalHeight:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$12300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    if-le v5, v13, :cond_c

    .line 6658
    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v8, 0x3

    # setter for: Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$12202(Lorg/telegram/ui/PhotoViewer;I)I

    goto/16 :goto_2

    .line 6659
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalWidth:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$13400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    if-gt v5, v12, :cond_d

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalHeight:I
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$12300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v5

    if-le v5, v12, :cond_e

    .line 6660
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v8, 0x2

    # setter for: Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    invoke-static {v5, v8}, Lorg/telegram/ui/PhotoViewer;->access$12202(Lorg/telegram/ui/PhotoViewer;I)I

    goto/16 :goto_2

    .line 6662
    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    invoke-static {v5, v6}, Lorg/telegram/ui/PhotoViewer;->access$12202(Lorg/telegram/ui/PhotoViewer;I)I

    goto/16 :goto_2

    :cond_f
    move v5, v7

    .line 6666
    goto/16 :goto_3

    .line 6673
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_10
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 6674
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "OMX.google.h264.encoder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "OMX.ST.VFM.H264Enc"

    .line 6675
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "OMX.Exynos.avc.enc"

    .line 6676
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "OMX.MARVELL.VIDEO.HW.CODA7542ENCODER"

    .line 6677
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "OMX.MARVELL.VIDEO.H264ENCODER"

    .line 6678
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "OMX.k3.video.encoder.avc"

    .line 6679
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "OMX.TI.DUCATI1.VIDEO.H264E"

    .line 6680
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 6681
    :cond_11
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v8, 0x0

    const/4 v9, 0x1

    # invokes: Lorg/telegram/ui/PhotoViewer;->setCompressItemEnabled(ZZ)V
    invoke-static {v5, v8, v9}, Lorg/telegram/ui/PhotoViewer;->access$13700(Lorg/telegram/ui/PhotoViewer;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 6688
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 6689
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->setCompressItemEnabled(ZZ)V
    invoke-static {v5, v7, v6}, Lorg/telegram/ui/PhotoViewer;->access$13700(Lorg/telegram/ui/PhotoViewer;ZZ)V

    .line 6690
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 6683
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_12
    :try_start_2
    const-string/jumbo v5, "video/avc"

    invoke-static {v0, v5}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 6684
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$64$1;->this$1:Lorg/telegram/ui/PhotoViewer$64;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$64;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v8, 0x0

    const/4 v9, 0x1

    # invokes: Lorg/telegram/ui/PhotoViewer;->setCompressItemEnabled(ZZ)V
    invoke-static {v5, v8, v9}, Lorg/telegram/ui/PhotoViewer;->access$13700(Lorg/telegram/ui/PhotoViewer;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4
.end method
