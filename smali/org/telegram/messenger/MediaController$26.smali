.class final Lorg/telegram/messenger/MediaController$26;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$guid:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 3595
    iput p1, p0, Lorg/telegram/messenger/MediaController$26;->val$guid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 43

    .prologue
    .line 3598
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 3599
    .local v37, "mediaAlbumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 3600
    .local v41, "photoAlbumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 3601
    .local v36, "mediaAlbums":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    .line 3602
    .local v40, "photoAlbums":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    const/16 v22, 0x0

    .line 3603
    .local v22, "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v14, 0x0

    .line 3604
    .local v14, "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/16 v27, 0x0

    .line 3606
    .local v27, "cameraFolder":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "Camera/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    .line 3610
    :goto_0
    const/4 v13, 0x0

    .line 3611
    .local v13, "mediaCameraAlbumId":Ljava/lang/Integer;
    const/16 v42, 0x0

    .line 3613
    .local v42, "photoCameraAlbumId":Ljava/lang/Integer;
    const/16 v28, 0x0

    .line 3615
    .local v28, "cursor":Landroid/database/Cursor;
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_b

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 3616
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$7000()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "datetaken DESC"

    invoke-static/range {v2 .. v7}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 3617
    if-eqz v28, :cond_b

    .line 3618
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 3619
    .local v35, "imageIdColumn":I
    const-string/jumbo v2, "bucket_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 3620
    .local v24, "bucketIdColumn":I
    const-string/jumbo v2, "bucket_display_name"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 3621
    .local v26, "bucketNameColumn":I
    const-string/jumbo v2, "_data"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 3622
    .local v29, "dataColumn":I
    const-string/jumbo v2, "datetaken"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 3623
    .local v30, "dateColumn":I
    const-string/jumbo v2, "orientation"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v39

    .local v39, "orientationColumn":I
    move-object/from16 v21, v14

    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .local v21, "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    move-object/from16 v23, v22

    .line 3625
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .local v23, "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3626
    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3627
    .local v5, "imageId":I
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 3628
    .local v4, "bucketId":I
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 3629
    .local v25, "bucketName":Ljava/lang/String;
    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3630
    .local v8, "path":Ljava/lang/String;
    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3631
    .local v6, "dateTaken":J
    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3633
    .local v9, "orientation":I
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/MediaController;->iFilter:Ljava/lang/String;

    const-string/jumbo v10, "*"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lorg/telegram/messenger/MediaController;->iFilter:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3637
    :cond_2
    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    .line 3639
    .local v3, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    if-nez v23, :cond_15

    .line 3640
    new-instance v22, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v2, 0x0

    const-string/jumbo v10, "AllPhotos"

    const v11, 0x7f070064

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v10, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 3641
    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3643
    :goto_2
    if-nez v21, :cond_14

    .line 3644
    new-instance v14, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v2, 0x0

    const-string/jumbo v10, "AllMedia"

    const v11, 0x7f070063

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v2, v10, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 3645
    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3647
    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 3648
    invoke-virtual {v14, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 3650
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3651
    .local v20, "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    if-nez v20, :cond_3

    .line 3652
    new-instance v20, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .end local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 3653
    .restart local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3654
    if-nez v13, :cond_5

    if-eqz v27, :cond_5

    if-eqz v8, :cond_5

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3655
    const/4 v2, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3656
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 3661
    :cond_3
    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 3663
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    check-cast v20, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3664
    .restart local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    if-nez v20, :cond_4

    .line 3665
    new-instance v20, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .end local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 3666
    .restart local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3667
    if-nez v42, :cond_8

    if-eqz v27, :cond_8

    if-eqz v8, :cond_8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3668
    const/4 v2, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3669
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    .line 3674
    :cond_4
    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v21, v14

    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    move-object/from16 v23, v22

    .line 3675
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_1

    .line 3607
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "orientation":I
    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .end local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "bucketIdColumn":I
    .end local v25    # "bucketName":Ljava/lang/String;
    .end local v26    # "bucketNameColumn":I
    .end local v28    # "cursor":Landroid/database/Cursor;
    .end local v29    # "dataColumn":I
    .end local v30    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .end local v39    # "orientationColumn":I
    .end local v42    # "photoCameraAlbumId":Ljava/lang/Integer;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :catch_0
    move-exception v34

    .line 3608
    .local v34, "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 3658
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "orientation":I
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v24    # "bucketIdColumn":I
    .restart local v25    # "bucketName":Ljava/lang/String;
    .restart local v26    # "bucketNameColumn":I
    .restart local v28    # "cursor":Landroid/database/Cursor;
    .restart local v29    # "dataColumn":I
    .restart local v30    # "dateColumn":I
    .restart local v35    # "imageIdColumn":I
    .restart local v39    # "orientationColumn":I
    .restart local v42    # "photoCameraAlbumId":Ljava/lang/Integer;
    :cond_5
    :try_start_5
    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 3678
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "orientation":I
    .end local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "bucketIdColumn":I
    .end local v25    # "bucketName":Ljava/lang/String;
    .end local v26    # "bucketNameColumn":I
    .end local v29    # "dataColumn":I
    .end local v30    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .end local v39    # "orientationColumn":I
    :catch_1
    move-exception v34

    .line 3679
    .local v34, "e":Ljava/lang/Throwable;
    :goto_6
    :try_start_6
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3681
    if-eqz v28, :cond_13

    .line 3683
    :try_start_7
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v38, v13

    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .local v38, "mediaCameraAlbumId":Ljava/lang/Integer;
    move-object/from16 v21, v14

    .line 3691
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v34    # "e":Ljava/lang/Throwable;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :goto_7
    :try_start_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_e

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    .line 3692
    :cond_6
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->access$7100()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "datetaken DESC"

    invoke-static/range {v10 .. v15}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 3693
    if-eqz v28, :cond_e

    .line 3694
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 3695
    .restart local v35    # "imageIdColumn":I
    const-string/jumbo v2, "bucket_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 3696
    .restart local v24    # "bucketIdColumn":I
    const-string/jumbo v2, "bucket_display_name"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 3697
    .restart local v26    # "bucketNameColumn":I
    const-string/jumbo v2, "_data"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 3698
    .restart local v29    # "dataColumn":I
    const-string/jumbo v2, "datetaken"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 3699
    .restart local v30    # "dateColumn":I
    const-string/jumbo v2, "duration"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3701
    .local v31, "durationColumn":I
    :cond_7
    :goto_8
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3702
    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3703
    .restart local v5    # "imageId":I
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 3704
    .restart local v4    # "bucketId":I
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 3705
    .restart local v25    # "bucketName":Ljava/lang/String;
    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3706
    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3707
    .restart local v6    # "dateTaken":J
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 3710
    .local v32, "duration":J
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 3714
    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-wide/16 v10, 0x3e8

    div-long v10, v32, v10

    long-to-int v0, v10

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object v11, v3

    move v12, v4

    move v13, v5

    move-wide v14, v6

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    .line 3716
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    if-nez v21, :cond_12

    .line 3717
    new-instance v14, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v2, 0x0

    const-string/jumbo v10, "AllMedia"

    const v11, 0x7f070063

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v2, v10, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3718
    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    const/4 v2, 0x0

    :try_start_9
    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3720
    :goto_9
    invoke-virtual {v14, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 3722
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3723
    .restart local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    if-nez v20, :cond_d

    .line 3724
    new-instance v20, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .end local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 3725
    .restart local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3726
    if-nez v38, :cond_c

    if-eqz v27, :cond_c

    if-eqz v8, :cond_c

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3727
    const/4 v2, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3728
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v13

    .line 3734
    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    :goto_a
    :try_start_a
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v38, v13

    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    move-object/from16 v21, v14

    .line 3735
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_8

    .line 3671
    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v31    # "durationColumn":I
    .end local v32    # "duration":J
    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v9    # "orientation":I
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v39    # "orientationColumn":I
    :cond_8
    :try_start_b
    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_5

    .line 3681
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "orientation":I
    .end local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "bucketIdColumn":I
    .end local v25    # "bucketName":Ljava/lang/String;
    .end local v26    # "bucketNameColumn":I
    .end local v29    # "dataColumn":I
    .end local v30    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .end local v39    # "orientationColumn":I
    :catchall_0
    move-exception v2

    :goto_b
    if-eqz v28, :cond_9

    .line 3683
    :try_start_c
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 3686
    :cond_9
    :goto_c
    throw v2

    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v24    # "bucketIdColumn":I
    .restart local v26    # "bucketNameColumn":I
    .restart local v29    # "dataColumn":I
    .restart local v30    # "dateColumn":I
    .restart local v35    # "imageIdColumn":I
    .restart local v39    # "orientationColumn":I
    :cond_a
    move-object/from16 v14, v21

    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    move-object/from16 v22, v23

    .line 3681
    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "bucketIdColumn":I
    .end local v26    # "bucketNameColumn":I
    .end local v29    # "dataColumn":I
    .end local v30    # "dateColumn":I
    .end local v35    # "imageIdColumn":I
    .end local v39    # "orientationColumn":I
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :cond_b
    if-eqz v28, :cond_13

    .line 3683
    :try_start_d
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    move-object/from16 v38, v13

    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    move-object/from16 v21, v14

    .line 3686
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_7

    .line 3684
    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :catch_2
    move-exception v34

    .line 3685
    .local v34, "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object/from16 v38, v13

    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    move-object/from16 v21, v14

    .line 3686
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_7

    .line 3684
    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .local v34, "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v34

    .line 3685
    .local v34, "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object/from16 v38, v13

    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    move-object/from16 v21, v14

    .line 3686
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_7

    .line 3684
    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v34    # "e":Ljava/lang/Exception;
    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :catch_4
    move-exception v34

    .line 3685
    .restart local v34    # "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 3730
    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v24    # "bucketIdColumn":I
    .restart local v25    # "bucketName":Ljava/lang/String;
    .restart local v26    # "bucketNameColumn":I
    .restart local v29    # "dataColumn":I
    .restart local v30    # "dateColumn":I
    .restart local v31    # "durationColumn":I
    .restart local v32    # "duration":J
    .restart local v35    # "imageIdColumn":I
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    :cond_c
    :try_start_e
    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_d
    move-object/from16 v13, v38

    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    goto :goto_a

    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v24    # "bucketIdColumn":I
    .end local v25    # "bucketName":Ljava/lang/String;
    .end local v26    # "bucketNameColumn":I
    .end local v29    # "dataColumn":I
    .end local v30    # "dateColumn":I
    .end local v31    # "durationColumn":I
    .end local v32    # "duration":J
    .end local v35    # "imageIdColumn":I
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    :cond_e
    move-object/from16 v13, v38

    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    move-object/from16 v14, v21

    .line 3741
    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    if-eqz v28, :cond_f

    .line 3743
    :try_start_f
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 3749
    :cond_f
    :goto_d
    const/16 v19, 0x0

    .local v19, "a":I
    :goto_e
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_11

    .line 3750
    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/MediaController$26$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/telegram/messenger/MediaController$26$1;-><init>(Lorg/telegram/messenger/MediaController$26;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3749
    add-int/lit8 v19, v19, 0x1

    goto :goto_e

    .line 3744
    .end local v19    # "a":I
    :catch_5
    move-exception v34

    .line 3745
    .restart local v34    # "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 3738
    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    :catch_6
    move-exception v34

    move-object/from16 v13, v38

    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    move-object/from16 v14, v21

    .line 3739
    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .local v34, "e":Ljava/lang/Throwable;
    :goto_f
    :try_start_10
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 3741
    if-eqz v28, :cond_f

    .line 3743
    :try_start_11
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_d

    .line 3744
    :catch_7
    move-exception v34

    .line 3745
    .local v34, "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 3741
    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    :catchall_1
    move-exception v2

    move-object/from16 v13, v38

    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    move-object/from16 v14, v21

    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :goto_10
    if-eqz v28, :cond_10

    .line 3743
    :try_start_12
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 3746
    :cond_10
    :goto_11
    throw v2

    .line 3744
    :catch_8
    move-exception v34

    .line 3745
    .restart local v34    # "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_11

    .line 3762
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v19    # "a":I
    :cond_11
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController$26;->val$guid:I

    const/16 v16, 0x0

    move-object/from16 v11, v37

    move-object/from16 v12, v41

    move-object/from16 v15, v22

    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/MediaController;->access$7200(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    .line 3763
    return-void

    .line 3741
    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .end local v19    # "a":I
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v24    # "bucketIdColumn":I
    .restart local v25    # "bucketName":Ljava/lang/String;
    .restart local v26    # "bucketNameColumn":I
    .restart local v29    # "dataColumn":I
    .restart local v30    # "dateColumn":I
    .restart local v31    # "durationColumn":I
    .restart local v32    # "duration":J
    .restart local v35    # "imageIdColumn":I
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    :catchall_2
    move-exception v2

    move-object/from16 v13, v38

    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    goto :goto_10

    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v24    # "bucketIdColumn":I
    .end local v25    # "bucketName":Ljava/lang/String;
    .end local v26    # "bucketNameColumn":I
    .end local v29    # "dataColumn":I
    .end local v30    # "dateColumn":I
    .end local v31    # "durationColumn":I
    .end local v32    # "duration":J
    .end local v35    # "imageIdColumn":I
    :catchall_3
    move-exception v2

    goto :goto_10

    .line 3738
    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v24    # "bucketIdColumn":I
    .restart local v25    # "bucketName":Ljava/lang/String;
    .restart local v26    # "bucketNameColumn":I
    .restart local v29    # "dataColumn":I
    .restart local v30    # "dateColumn":I
    .restart local v31    # "durationColumn":I
    .restart local v32    # "duration":J
    .restart local v35    # "imageIdColumn":I
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    :catch_9
    move-exception v34

    move-object/from16 v13, v38

    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    goto :goto_f

    .restart local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :catch_a
    move-exception v34

    goto :goto_f

    .line 3681
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v20    # "albumEntry":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketName":Ljava/lang/String;
    .end local v31    # "durationColumn":I
    .end local v32    # "duration":J
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v39    # "orientationColumn":I
    :catchall_4
    move-exception v2

    move-object/from16 v14, v21

    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_b

    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "orientation":I
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v25    # "bucketName":Ljava/lang/String;
    :catchall_5
    move-exception v2

    move-object/from16 v14, v21

    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_b

    .line 3678
    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "orientation":I
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v25    # "bucketName":Ljava/lang/String;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :catch_b
    move-exception v34

    move-object/from16 v14, v21

    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_6

    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "orientation":I
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v25    # "bucketName":Ljava/lang/String;
    :catch_c
    move-exception v34

    move-object/from16 v14, v21

    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_6

    .end local v9    # "orientation":I
    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v39    # "orientationColumn":I
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v31    # "durationColumn":I
    .restart local v32    # "duration":J
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    :cond_12
    move-object/from16 v14, v21

    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_9

    .end local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .end local v4    # "bucketId":I
    .end local v5    # "imageId":I
    .end local v6    # "dateTaken":J
    .end local v8    # "path":Ljava/lang/String;
    .end local v24    # "bucketIdColumn":I
    .end local v25    # "bucketName":Ljava/lang/String;
    .end local v26    # "bucketNameColumn":I
    .end local v29    # "dataColumn":I
    .end local v30    # "dateColumn":I
    .end local v31    # "durationColumn":I
    .end local v32    # "duration":J
    .end local v35    # "imageIdColumn":I
    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    :cond_13
    move-object/from16 v38, v13

    .end local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    move-object/from16 v21, v14

    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_7

    .end local v38    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v3    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v4    # "bucketId":I
    .restart local v5    # "imageId":I
    .restart local v6    # "dateTaken":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "orientation":I
    .restart local v13    # "mediaCameraAlbumId":Ljava/lang/Integer;
    .restart local v24    # "bucketIdColumn":I
    .restart local v25    # "bucketName":Ljava/lang/String;
    .restart local v26    # "bucketNameColumn":I
    .restart local v29    # "dataColumn":I
    .restart local v30    # "dateColumn":I
    .restart local v35    # "imageIdColumn":I
    .restart local v39    # "orientationColumn":I
    :cond_14
    move-object/from16 v14, v21

    .end local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_3

    .end local v14    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .end local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v21    # "allMediaAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    :cond_15
    move-object/from16 v22, v23

    .end local v23    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    .restart local v22    # "allPhotosAlbum":Lorg/telegram/messenger/MediaController$AlbumEntry;
    goto/16 :goto_2
.end method
