.class public Lorg/telegram/tgnet/TLRPC$InputFileLocation;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputFileLocation"
.end annotation


# instance fields
.field public access_hash:J

.field public id:J

.field public local_id:I

.field public secret:J

.field public volume_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7575
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7583
    const/4 v0, 0x0

    .line 7584
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    sparse-switch p1, :sswitch_data_0

    .line 7595
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 7596
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputFileLocation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7586
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    .line 7587
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    goto :goto_0

    .line 7589
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 7590
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    goto :goto_0

    .line 7592
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    goto :goto_0

    .line 7598
    :cond_0
    if-eqz v0, :cond_1

    .line 7599
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 7601
    :cond_1
    return-object v0

    .line 7584
    nop

    :sswitch_data_0
    .sparse-switch
        -0xadca2ab -> :sswitch_0
        0x14637196 -> :sswitch_2
        0x4e45abe9 -> :sswitch_1
    .end sparse-switch
.end method
