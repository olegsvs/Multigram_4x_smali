.class public Lorg/telegram/messenger/WearDataLayerListenerService;
.super Lcom/google/android/gms/wearable/WearableListenerService;
.source "WearDataLayerListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/wearable/WearableListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelOpened(Lcom/google/android/gms/wearable/Channel;)V
    .locals 18
    .param p1, "ch"    # Lcom/google/android/gms/wearable/Channel;

    .prologue
    .line 43
    new-instance v13, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v14, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    .line 44
    .local v2, "apiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v13

    if-nez v13, :cond_0

    .line 45
    const-string/jumbo v13, "failed to connect google api client"

    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/wearable/Channel;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "path":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "wear channel path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 51
    :try_start_0
    const-string/jumbo v13, "/getCurrentUser"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 52
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/Channel;->getOutputStream(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;

    invoke-interface {v13}, Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v6, "out":Ljava/io/DataOutputStream;
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 54
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 55
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 56
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 57
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 58
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 59
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v13, :cond_4

    .line 60
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v8

    .line 61
    .local v8, "photo":Ljava/io/File;
    new-instance v3, Ljava/util/concurrent/CyclicBarrier;

    const/4 v13, 0x2

    invoke-direct {v3, v13}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    .line 62
    .local v3, "barrier":Ljava/util/concurrent/CyclicBarrier;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 63
    new-instance v5, Lorg/telegram/messenger/WearDataLayerListenerService$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v3}, Lorg/telegram/messenger/WearDataLayerListenerService$1;-><init>(Lorg/telegram/messenger/WearDataLayerListenerService;Ljava/io/File;Ljava/util/concurrent/CyclicBarrier;)V

    .line 78
    .local v5, "listener":Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
    new-instance v13, Lorg/telegram/messenger/WearDataLayerListenerService$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v11}, Lorg/telegram/messenger/WearDataLayerListenerService$2;-><init>(Lorg/telegram/messenger/WearDataLayerListenerService;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const-wide/16 v14, 0xa

    :try_start_1
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v14, v15, v13}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 89
    :goto_1
    :try_start_2
    new-instance v13, Lorg/telegram/messenger/WearDataLayerListenerService$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lorg/telegram/messenger/WearDataLayerListenerService$3;-><init>(Lorg/telegram/messenger/WearDataLayerListenerService;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 96
    .end local v5    # "listener":Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/32 v16, 0x3200000

    cmp-long v13, v14, v16

    if-gtz v13, :cond_3

    .line 97
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v13, v14

    new-array v9, v13, [B

    .line 98
    .local v9, "photoData":[B
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v10, "photoIn":Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v13, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 100
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 101
    array-length v13, v9

    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 102
    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 112
    .end local v3    # "barrier":Ljava/util/concurrent/CyclicBarrier;
    .end local v8    # "photo":Ljava/io/File;
    .end local v9    # "photoData":[B
    .end local v10    # "photoIn":Ljava/io/FileInputStream;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_2
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 113
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    .end local v6    # "out":Ljava/io/DataOutputStream;
    :cond_2
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/Channel;->close(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    .line 169
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 170
    const-string/jumbo v13, "WearableDataLayer channel thread exiting"

    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .restart local v3    # "barrier":Ljava/util/concurrent/CyclicBarrier;
    .restart local v6    # "out":Ljava/io/DataOutputStream;
    .restart local v8    # "photo":Ljava/io/File;
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    const/4 v13, 0x0

    :try_start_3
    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 165
    .end local v3    # "barrier":Ljava/util/concurrent/CyclicBarrier;
    .end local v6    # "out":Ljava/io/DataOutputStream;
    .end local v8    # "photo":Ljava/io/File;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_0
    move-exception v12

    .line 166
    .local v12, "x":Ljava/lang/Exception;
    const-string/jumbo v13, "error processing wear request"

    invoke-static {v13, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 107
    .end local v12    # "x":Ljava/lang/Exception;
    .restart local v6    # "out":Ljava/io/DataOutputStream;
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    const/4 v13, 0x0

    :try_start_4
    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    .line 110
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    .line 114
    .end local v6    # "out":Ljava/io/DataOutputStream;
    :cond_6
    const-string/jumbo v13, "/waitForAuthCode"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 115
    const/4 v13, 0x1

    new-array v4, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v4, v13

    .line 116
    .local v4, "code":[Ljava/lang/String;
    new-instance v3, Ljava/util/concurrent/CyclicBarrier;

    const/4 v13, 0x2

    invoke-direct {v3, v13}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    .line 117
    .restart local v3    # "barrier":Ljava/util/concurrent/CyclicBarrier;
    new-instance v5, Lorg/telegram/messenger/WearDataLayerListenerService$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v3}, Lorg/telegram/messenger/WearDataLayerListenerService$4;-><init>(Lorg/telegram/messenger/WearDataLayerListenerService;[Ljava/lang/String;Ljava/util/concurrent/CyclicBarrier;)V

    .line 141
    .restart local v5    # "listener":Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
    new-instance v13, Lorg/telegram/messenger/WearDataLayerListenerService$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lorg/telegram/messenger/WearDataLayerListenerService$5;-><init>(Lorg/telegram/messenger/WearDataLayerListenerService;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 148
    const-wide/16 v14, 0xf

    :try_start_5
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v14, v15, v13}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 151
    :goto_4
    :try_start_6
    new-instance v13, Lorg/telegram/messenger/WearDataLayerListenerService$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lorg/telegram/messenger/WearDataLayerListenerService$6;-><init>(Lorg/telegram/messenger/WearDataLayerListenerService;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 157
    new-instance v6, Ljava/io/DataOutputStream;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/Channel;->getOutputStream(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;

    invoke-interface {v13}, Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 158
    .restart local v6    # "out":Ljava/io/DataOutputStream;
    const/4 v13, 0x0

    aget-object v13, v4, v13

    if-eqz v13, :cond_7

    .line 159
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 162
    :goto_5
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 163
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_3

    .line 161
    :cond_7
    const-string/jumbo v13, ""

    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    .line 149
    .end local v6    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v13

    goto :goto_4

    .line 87
    .end local v4    # "code":[Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/DataOutputStream;
    .restart local v8    # "photo":Ljava/io/File;
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_2
    move-exception v13

    goto/16 :goto_1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->onCreate()V

    .line 29
    const-string/jumbo v0, "WearableDataLayer service created"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->onDestroy()V

    .line 35
    const-string/jumbo v0, "WearableDataLayer service destroyed"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 36
    return-void
.end method
