.class Lorg/telegram/messenger/FileLoadOperation$6;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoadOperation;

.field final synthetic val$request:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 893
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$request:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 896
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$600(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    if-eqz p2, :cond_2

    .line 900
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$request:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v2, "FILE_TOKEN_INVALID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # setter for: Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z
    invoke-static {v0, v5}, Lorg/telegram/messenger/FileLoadOperation;->access$1802(Lorg/telegram/messenger/FileLoadOperation;Z)Z

    .line 903
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->access$1900(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    .line 904
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$400(Lorg/telegram/messenger/FileLoadOperation;)V

    goto :goto_0

    .line 909
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;

    if-eqz v0, :cond_7

    move-object v11, p1

    .line 910
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;

    .line 911
    .local v11, "res":Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->cdn_file_hashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 912
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$1200(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 913
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    # setter for: Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->access$1202(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 915
    :cond_3
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_1
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->cdn_file_hashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 916
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->cdn_file_hashes:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;

    .line 917
    .local v10, "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$1200(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, v10, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 920
    .end local v9    # "a":I
    .end local v10    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    :cond_4
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_iv:[B

    if-eqz v0, :cond_5

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_key:[B

    if-eqz v0, :cond_5

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_iv:[B

    array-length v0, v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_5

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_key:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_6

    .line 921
    :cond_5
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_error;

    .end local p2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    .line 922
    .restart local p2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    const-string/jumbo v0, "bad redirect response"

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 923
    const/16 v0, 0x190

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    .line 924
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    invoke-static {v0, v2, p2}, Lorg/telegram/messenger/FileLoadOperation;->access$1500(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    goto/16 :goto_0

    .line 926
    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # setter for: Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z
    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLoadOperation;->access$1802(Lorg/telegram/messenger/FileLoadOperation;Z)Z

    .line 927
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->dc_id:I

    # setter for: Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->access$2002(Lorg/telegram/messenger/FileLoadOperation;I)I

    .line 928
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_iv:[B

    # setter for: Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->access$2102(Lorg/telegram/messenger/FileLoadOperation;[B)[B

    .line 929
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->encryption_key:[B

    # setter for: Lorg/telegram/messenger/FileLoadOperation;->cdnKey:[B
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->access$2202(Lorg/telegram/messenger/FileLoadOperation;[B)[B

    .line 930
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;->file_token:[B

    # setter for: Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->access$2302(Lorg/telegram/messenger/FileLoadOperation;[B)[B

    .line 931
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->access$1900(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    .line 932
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$400(Lorg/telegram/messenger/FileLoadOperation;)V

    goto/16 :goto_0

    .line 934
    .end local v11    # "res":Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;

    if-eqz v0, :cond_8

    .line 935
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$2400(Lorg/telegram/messenger/FileLoadOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->access$1900(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    .line 937
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # setter for: Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z
    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLoadOperation;->access$2402(Lorg/telegram/messenger/FileLoadOperation;Z)Z

    move-object v11, p1

    .line 938
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;

    .line 939
    .local v11, "res":Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;-><init>()V

    .line 940
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$2300(Lorg/telegram/messenger/FileLoadOperation;)[B

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;->file_token:[B

    .line 941
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;->request_token:[B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;->request_token:[B

    .line 942
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$6$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/FileLoadOperation$6$1;-><init>(Lorg/telegram/messenger/FileLoadOperation$6;)V

    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    .line 968
    # getter for: Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation;->access$2500(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v6

    move-object v4, v3

    move v8, v7

    .line 942
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    goto/16 :goto_0

    .line 971
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;
    .end local v11    # "res":Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;
    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    if-eqz v0, :cond_a

    .line 972
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    # setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$802(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    .line 978
    :goto_2
    if-eqz p1, :cond_9

    .line 979
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$2600(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    const/high16 v2, 0x3000000

    if-ne v0, v2, :cond_c

    .line 980
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v2, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v3, 0x3

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    .line 989
    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    invoke-static {v0, v2, p2}, Lorg/telegram/messenger/FileLoadOperation;->access$1500(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    goto/16 :goto_0

    .line 973
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    if-eqz v0, :cond_b

    .line 974
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    # setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$902(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    goto :goto_2

    .line 976
    :cond_b
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$6;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    # setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseCdn:Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;
    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1002(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    goto :goto_2

    .line 981
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$2600(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    const/high16 v2, 0x2000000

    if-ne v0, v2, :cond_d

    .line 982
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v2, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v3, 0x2

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_3

    .line 983
    :cond_d
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$2600(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_e

    .line 984
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v2, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v3, 0x4

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_3

    .line 985
    :cond_e
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$6;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # getter for: Lorg/telegram/messenger/FileLoadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$2600(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    const/high16 v2, 0x4000000

    if-ne v0, v2, :cond_9

    .line 986
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v2, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v3, 0x5

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_3
.end method
