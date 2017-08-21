.class Lorg/telegram/messenger/ImageLoader$CacheOutTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheOutTask"
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private isCancelled:Z

.field private runningThread:Ljava/lang/Thread;

.field private final sync:Ljava/lang/Object;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V
    .locals 1
    .param p2, "image"    # Lorg/telegram/messenger/ImageLoader$CacheImage;

    .prologue
    .line 607
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    .line 608
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 609
    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .prologue
    .line 600
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object v0
.end method

.method private onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 958
    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 983
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 986
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    .line 989
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 996
    return-void

    .line 995
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 992
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 49

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 614
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    .line 615
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 616
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_0

    .line 617
    monitor-exit v6

    .line 955
    :goto_0
    return-void

    .line 619
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    if-eqz v5, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 623
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_1

    .line 624
    monitor-exit v6

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 619
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 626
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 627
    new-instance v28, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, v28

    invoke-direct {v0, v6, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;Z)V

    .line 628
    .local v28, "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 629
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0

    .line 627
    .end local v28    # "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 631
    :cond_3
    const/16 v35, 0x0

    .line 632
    .local v35, "mediaId":Ljava/lang/Long;
    const/16 v36, 0x0

    .line 633
    .local v36, "mediaIsVideo":Z
    const/16 v31, 0x0

    .line 634
    .local v31, "image":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    move-object/from16 v21, v0

    .line 635
    .local v21, "cacheFileFinal":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    if-eqz v5, :cond_8

    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".enc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v32, 0x1

    .line 636
    .local v32, "inEncryptedFile":Z
    :goto_2
    const/16 v22, 0x1

    .line 637
    .local v22, "canDeleteFile":Z
    const/16 v47, 0x0

    .line 639
    .local v47, "useNativeWebpLoaded":Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_5

    .line 640
    const/16 v41, 0x0

    .line 642
    .local v41, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v42, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 644
    .end local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v42, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v5, :cond_9

    .line 645
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1200()[B

    move-result-object v20

    .line 649
    .local v20, "bytes":[B
    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 650
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v46

    .line 651
    .local v46, "str":Ljava/lang/String;
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v46

    .line 652
    const-string/jumbo v5, "riff"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "webp"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 653
    const/16 v47, 0x1

    .line 655
    :cond_4
    invoke-virtual/range {v42 .. v42}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 659
    if-eqz v42, :cond_5

    .line 661
    :try_start_6
    invoke-virtual/range {v42 .. v42}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 669
    .end local v20    # "bytes":[B
    .end local v42    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v46    # "str":Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v5, :cond_20

    .line 670
    const/16 v16, 0x0

    .line 671
    .local v16, "blurType":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 672
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 673
    const/16 v16, 0x3

    .line 682
    :cond_6
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->access$1402(Lorg/telegram/messenger/ImageLoader;J)J

    .line 683
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 684
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_d

    .line 685
    monitor-exit v6

    goto/16 :goto_0

    .line 687
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 756
    :catch_0
    move-exception v25

    move-object/from16 v4, v31

    .line 757
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .local v4, "image":Landroid/graphics/Bitmap;
    .local v25, "e":Ljava/lang/Throwable;
    :goto_6
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 952
    .end local v16    # "blurType":I
    .end local v25    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_7
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 953
    if-eqz v4, :cond_46

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto/16 :goto_0

    .line 635
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v22    # "canDeleteFile":Z
    .end local v32    # "inEncryptedFile":Z
    .end local v47    # "useNativeWebpLoaded":Z
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_8
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 647
    .restart local v22    # "canDeleteFile":Z
    .restart local v32    # "inEncryptedFile":Z
    .restart local v42    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v47    # "useNativeWebpLoaded":Z
    :cond_9
    :try_start_a
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1300()[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-result-object v20

    .restart local v20    # "bytes":[B
    goto/16 :goto_3

    .line 662
    .restart local v46    # "str":Ljava/lang/String;
    :catch_1
    move-exception v25

    .line 663
    .local v25, "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 656
    .end local v20    # "bytes":[B
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v42    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v46    # "str":Ljava/lang/String;
    .restart local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v25

    .line 657
    .restart local v25    # "e":Ljava/lang/Exception;
    :goto_9
    :try_start_b
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 659
    if-eqz v41, :cond_5

    .line 661
    :try_start_c
    invoke-virtual/range {v41 .. v41}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_4

    .line 662
    :catch_3
    move-exception v25

    .line 663
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 659
    .end local v25    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v5

    :goto_a
    if-eqz v41, :cond_a

    .line 661
    :try_start_d
    invoke-virtual/range {v41 .. v41}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 664
    :cond_a
    :goto_b
    throw v5

    .line 662
    :catch_4
    move-exception v25

    .line 663
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 674
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "blurType":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 675
    const/16 v16, 0x2

    goto :goto_5

    .line 676
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 677
    const/16 v16, 0x1

    goto :goto_5

    .line 687
    :cond_d
    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 689
    :try_start_f
    new-instance v38, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 690
    .local v38, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v38

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 692
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_e

    .line 693
    const/4 v5, 0x1

    move-object/from16 v0, v38

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 696
    :cond_e
    if-eqz v47, :cond_11

    .line 697
    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 698
    .local v27, "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v19

    .line 700
    .local v19, "buffer":Ljava/nio/ByteBuffer;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 701
    .local v18, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 702
    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v5, v0, v6, v1, v7}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 703
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    move-result-object v4

    .line 705
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v38

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_10

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 706
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    .line 733
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    :goto_d
    if-nez v4, :cond_17

    .line 734
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 735
    :cond_f
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_7

    .line 756
    :catch_5
    move-exception v25

    goto/16 :goto_6

    .line 705
    .restart local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_10
    const/4 v5, 0x0

    goto :goto_c

    .line 708
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_11
    :try_start_11
    move-object/from16 v0, v38

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_15

    .line 709
    new-instance v26, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 710
    .local v26, "f":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v34, v0

    .line 711
    .local v34, "len":I
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v34

    if-lt v5, v0, :cond_14

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v23

    .line 712
    .local v23, "data":[B
    :goto_e
    if-nez v23, :cond_12

    .line 713
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/ImageLoader;->access$1502([B)[B

    .line 715
    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v34

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 716
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->close()V

    .line 717
    if-eqz v32, :cond_13

    .line 718
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-static {v0, v5, v1, v6}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    .line 720
    :cond_13
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v34

    move-object/from16 v2, v38

    invoke-static {v0, v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 721
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto :goto_d

    .line 711
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v23    # "data":[B
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_14
    const/16 v23, 0x0

    goto :goto_e

    .line 723
    .end local v26    # "f":Ljava/io/RandomAccessFile;
    .end local v34    # "len":I
    :cond_15
    if-eqz v32, :cond_16

    .line 724
    new-instance v33, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 728
    .local v33, "is":Ljava/io/FileInputStream;
    :goto_f
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v4

    .line 729
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_12
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_d

    .line 726
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v33    # "is":Ljava/io/FileInputStream;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_16
    :try_start_13
    new-instance v33, Ljava/io/FileInputStream;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    .restart local v33    # "is":Ljava/io/FileInputStream;
    goto :goto_f

    .line 738
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .end local v33    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :cond_17
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_19

    .line 739
    :try_start_14
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    .line 740
    const/4 v5, 0x3

    move-object/from16 v0, v38

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_18

    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_7

    :cond_18
    const/4 v6, 0x1

    goto :goto_10

    .line 742
    :cond_19
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_1b

    .line 743
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    .line 744
    const/4 v5, 0x1

    move-object/from16 v0, v38

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1a

    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_7

    :cond_1a
    const/4 v6, 0x1

    goto :goto_11

    .line 746
    :cond_1b
    const/4 v5, 0x3

    move/from16 v0, v16

    if-ne v0, v5, :cond_1f

    .line 747
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    .line 748
    const/4 v5, 0x7

    move-object/from16 v0, v38

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1c

    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 749
    const/4 v5, 0x7

    move-object/from16 v0, v38

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1d

    const/4 v6, 0x0

    :goto_13
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 750
    const/4 v5, 0x7

    move-object/from16 v0, v38

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1e

    const/4 v6, 0x0

    :goto_14
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_7

    .line 748
    :cond_1c
    const/4 v6, 0x1

    goto :goto_12

    .line 749
    :cond_1d
    const/4 v6, 0x1

    goto :goto_13

    .line 750
    :cond_1e
    const/4 v6, 0x1

    goto :goto_14

    .line 752
    :cond_1f
    if-nez v16, :cond_7

    move-object/from16 v0, v38

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_7

    .line 753
    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_7

    .line 761
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v16    # "blurType":I
    .end local v38    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_20
    const/16 v37, 0x0

    .line 762
    .local v37, "mediaThumbPath":Ljava/lang/String;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v5, :cond_22

    .line 763
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "thumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 764
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    .line 765
    .local v30, "idx":I
    if-ltz v30, :cond_21

    .line 766
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v6, 0x8

    move/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    .line 767
    const/16 v36, 0x0

    .line 768
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    add-int/lit8 v6, v30, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v37

    .line 770
    :cond_21
    const/16 v22, 0x0

    .line 783
    .end local v30    # "idx":I
    :cond_22
    :goto_15
    const/16 v24, 0x14

    .line 784
    .local v24, "delay":I
    if-eqz v35, :cond_23

    .line 785
    const/16 v24, 0x0

    .line 787
    :cond_23
    if-eqz v24, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1400(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1400(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 v0, v24

    int-to-long v10, v0

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_24

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_24

    .line 788
    move/from16 v0, v24

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 790
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->access$1402(Lorg/telegram/messenger/ImageLoader;J)J

    .line 791
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6

    .line 792
    :try_start_16
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_28

    .line 793
    monitor-exit v6

    goto/16 :goto_0

    .line 795
    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    throw v5

    .line 948
    .end local v24    # "delay":I
    :catch_6
    move-exception v5

    move-object/from16 v4, v31

    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto/16 :goto_7

    .line 771
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 772
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const/16 v7, 0x9

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    .line 773
    .restart local v30    # "idx":I
    if-ltz v30, :cond_26

    .line 774
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v6, 0x9

    move/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    .line 775
    const/16 v36, 0x1

    .line 777
    :cond_26
    const/16 v22, 0x0

    .line 778
    goto/16 :goto_15

    .end local v30    # "idx":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_6

    move-result v5

    if-nez v5, :cond_22

    .line 779
    const/16 v22, 0x0

    goto/16 :goto_15

    .line 795
    .restart local v24    # "delay":I
    :cond_28
    :try_start_18
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 797
    :try_start_19
    new-instance v38, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 798
    .restart local v38    # "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v38

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 800
    const/16 v48, 0x0

    .line 801
    .local v48, "w_filter":F
    const/16 v29, 0x0

    .line 802
    .local v29, "h_filter":F
    const/4 v15, 0x0

    .line 803
    .local v15, "blur":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_2f

    .line 804
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 805
    .local v12, "args":[Ljava/lang/String;
    array-length v5, v12

    const/4 v6, 0x2

    if-lt v5, v6, :cond_29

    .line 806
    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v48, v5, v6

    .line 807
    const/4 v5, 0x1

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v29, v5, v6

    .line 809
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 810
    const/4 v15, 0x1

    .line 812
    :cond_2a
    const/4 v5, 0x0

    cmpl-float v5, v48, v5

    if-eqz v5, :cond_47

    const/4 v5, 0x0

    cmpl-float v5, v29, v5

    if-eqz v5, :cond_47

    .line 813
    const/4 v5, 0x1

    move-object/from16 v0, v38

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 815
    if-eqz v35, :cond_2d

    if-nez v37, :cond_2d

    .line 816
    if-eqz v36, :cond_2c

    .line 817
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v38

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_6

    move-object/from16 v4, v31

    .line 832
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :goto_16
    :try_start_1a
    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v5

    move/from16 v40, v0

    .line 833
    .local v40, "photoW":F
    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v5

    move/from16 v39, v0

    .line 834
    .local v39, "photoH":F
    div-float v5, v40, v48

    div-float v6, v39, v29

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v44

    .line 835
    .local v44, "scaleFactor":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v44, v5

    if-gez v5, :cond_2b

    .line 836
    const/high16 v44, 0x3f800000    # 1.0f

    .line 838
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, v38

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 839
    move/from16 v0, v44

    float-to-int v5, v0

    move-object/from16 v0, v38

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 859
    .end local v12    # "args":[Ljava/lang/String;
    .end local v39    # "photoH":F
    .end local v40    # "photoW":F
    .end local v44    # "scaleFactor":F
    :goto_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_7

    .line 860
    :try_start_1b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_32

    .line 861
    monitor-exit v6

    goto/16 :goto_0

    .line 863
    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :try_start_1c
    throw v5
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_7

    .line 948
    :catch_7
    move-exception v5

    goto/16 :goto_7

    .line 819
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v12    # "args":[Ljava/lang/String;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_2c
    :try_start_1d
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v38

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v4, v31

    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto :goto_16

    .line 823
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_2d
    if-eqz v32, :cond_2e

    .line 824
    new-instance v33, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 828
    .restart local v33    # "is":Ljava/io/FileInputStream;
    :goto_18
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_6

    move-result-object v4

    .line 829
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_1e
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_7

    goto :goto_16

    .line 826
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v33    # "is":Ljava/io/FileInputStream;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_2e
    :try_start_1f
    new-instance v33, Ljava/io/FileInputStream;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v33    # "is":Ljava/io/FileInputStream;
    goto :goto_18

    .line 841
    .end local v12    # "args":[Ljava/lang/String;
    .end local v33    # "is":Ljava/io/FileInputStream;
    :cond_2f
    if-eqz v37, :cond_47

    .line 842
    const/4 v5, 0x1

    move-object/from16 v0, v38

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 843
    new-instance v33, Ljava/io/FileInputStream;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 844
    .restart local v33    # "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_6

    move-result-object v4

    .line 845
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_20
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V

    .line 846
    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v5

    move/from16 v40, v0

    .line 847
    .restart local v40    # "photoW":F
    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v5

    move/from16 v39, v0

    .line 848
    .restart local v39    # "photoH":F
    const/high16 v5, 0x44000000    # 512.0f

    div-float v5, v40, v5

    const/high16 v6, 0x43c00000    # 384.0f

    div-float v6, v39, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v44

    .line 849
    .restart local v44    # "scaleFactor":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v44, v5

    if-gez v5, :cond_30

    .line 850
    const/high16 v44, 0x3f800000    # 1.0f

    .line 852
    :cond_30
    const/4 v5, 0x0

    move-object/from16 v0, v38

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 853
    const/16 v43, 0x1

    .line 855
    .local v43, "sample":I
    :cond_31
    mul-int/lit8 v43, v43, 0x2

    .line 856
    mul-int/lit8 v5, v43, 0x2

    int-to-float v5, v5

    cmpg-float v5, v5, v44

    if-ltz v5, :cond_31

    .line 857
    move/from16 v0, v43

    move-object/from16 v1, v38

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_17

    .line 863
    .end local v33    # "is":Ljava/io/FileInputStream;
    .end local v39    # "photoH":F
    .end local v40    # "photoW":F
    .end local v43    # "sample":I
    .end local v44    # "scaleFactor":F
    :cond_32
    :try_start_21
    monitor-exit v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 865
    :try_start_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_33

    if-nez v15, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v5, :cond_38

    .line 866
    :cond_33
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v38

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 870
    :goto_19
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_34

    .line 871
    const/4 v5, 0x1

    move-object/from16 v0, v38

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 874
    :cond_34
    const/4 v5, 0x0

    move-object/from16 v0, v38

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 875
    if-eqz v35, :cond_35

    if-nez v37, :cond_35

    .line 876
    if-eqz v36, :cond_39

    .line 877
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v38

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 882
    :cond_35
    :goto_1a
    if-nez v4, :cond_36

    .line 883
    if-eqz v47, :cond_3b

    .line 884
    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 885
    .restart local v27    # "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v19

    .line 887
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 888
    .restart local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 889
    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v5, v0, v6, v1, v7}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 890
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 892
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v38

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_3a

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 893
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    .line 920
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_36
    :goto_1c
    if-nez v4, :cond_41

    .line 921
    if-eqz v22, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 922
    :cond_37
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    goto/16 :goto_7

    .line 868
    :cond_38
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v38

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_19

    .line 879
    :cond_39
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v38

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_1a

    .line 892
    .restart local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_3a
    const/4 v5, 0x0

    goto :goto_1b

    .line 895
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_3b
    move-object/from16 v0, v38

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_3f

    .line 896
    new-instance v26, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 897
    .restart local v26    # "f":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v34, v0

    .line 898
    .restart local v34    # "len":I
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v5

    if-eqz v5, :cond_3e

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v34

    if-lt v5, v0, :cond_3e

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v23

    .line 899
    .restart local v23    # "data":[B
    :goto_1d
    if-nez v23, :cond_3c

    .line 900
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/ImageLoader;->access$1602([B)[B

    .line 902
    :cond_3c
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v34

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 903
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->close()V

    .line 904
    if-eqz v32, :cond_3d

    .line 905
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-static {v0, v5, v1, v6}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    .line 907
    :cond_3d
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v34

    move-object/from16 v2, v38

    invoke-static {v0, v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 908
    goto/16 :goto_1c

    .line 898
    .end local v23    # "data":[B
    :cond_3e
    const/16 v23, 0x0

    goto :goto_1d

    .line 910
    .end local v26    # "f":Ljava/io/RandomAccessFile;
    .end local v34    # "len":I
    :cond_3f
    if-eqz v32, :cond_40

    .line 911
    new-instance v33, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 915
    .restart local v33    # "is":Ljava/io/FileInputStream;
    :goto_1e
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 916
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1c

    .line 913
    .end local v33    # "is":Ljava/io/FileInputStream;
    :cond_40
    new-instance v33, Ljava/io/FileInputStream;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v33    # "is":Ljava/io/FileInputStream;
    goto :goto_1e

    .line 925
    .end local v33    # "is":Ljava/io/FileInputStream;
    :cond_41
    const/16 v17, 0x0

    .line 926
    .local v17, "blured":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_44

    .line 927
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v14, v5

    .line 928
    .local v14, "bitmapW":F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v13, v5

    .line 929
    .local v13, "bitmapH":F
    move-object/from16 v0, v38

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_42

    const/4 v5, 0x0

    cmpl-float v5, v48, v5

    if-eqz v5, :cond_42

    cmpl-float v5, v14, v48

    if-eqz v5, :cond_42

    const/high16 v5, 0x41a00000    # 20.0f

    add-float v5, v5, v48

    cmpl-float v5, v14, v5

    if-lez v5, :cond_42

    .line 930
    div-float v44, v14, v48

    .line 931
    .restart local v44    # "scaleFactor":F
    move/from16 v0, v48

    float-to-int v5, v0

    div-float v6, v13, v44

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v45

    .line 932
    .local v45, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v45

    if-eq v4, v0, :cond_42

    .line 933
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 934
    move-object/from16 v4, v45

    .line 937
    .end local v44    # "scaleFactor":F
    .end local v45    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_42
    if-eqz v4, :cond_44

    if-eqz v15, :cond_44

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v5, v13, v5

    if-gez v5, :cond_44

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v5, v14, v5

    if-gez v5, :cond_44

    .line 938
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_43

    .line 939
    const/4 v5, 0x3

    move-object/from16 v0, v38

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_45

    const/4 v6, 0x0

    :goto_1f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 941
    :cond_43
    const/16 v17, 0x1

    .line 944
    .end local v13    # "bitmapH":F
    .end local v14    # "bitmapW":F
    :cond_44
    if-nez v17, :cond_7

    move-object/from16 v0, v38

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_7

    .line 945
    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_7

    goto/16 :goto_7

    .line 939
    .restart local v13    # "bitmapH":F
    .restart local v14    # "bitmapW":F
    :cond_45
    const/4 v6, 0x1

    goto :goto_1f

    .line 953
    .end local v13    # "bitmapH":F
    .end local v14    # "bitmapW":F
    .end local v15    # "blur":Z
    .end local v17    # "blured":Z
    .end local v24    # "delay":I
    .end local v29    # "h_filter":F
    .end local v37    # "mediaThumbPath":Ljava/lang/String;
    .end local v38    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v48    # "w_filter":F
    :cond_46
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 659
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v42    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catchall_6
    move-exception v5

    move-object/from16 v41, v42

    .end local v42    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_a

    .line 656
    .end local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v42    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v25

    move-object/from16 v41, v42

    .end local v42    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_9

    .end local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "blur":Z
    .restart local v24    # "delay":I
    .restart local v29    # "h_filter":F
    .restart local v37    # "mediaThumbPath":Ljava/lang/String;
    .restart local v38    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v48    # "w_filter":F
    :cond_47
    move-object/from16 v4, v31

    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto/16 :goto_17
.end method
