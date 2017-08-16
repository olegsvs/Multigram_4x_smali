.class public Lorg/telegram/tgnet/TLRPC$InputChannel;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputChannel"
.end annotation


# instance fields
.field public access_hash:J

.field public channel_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16205
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 16210
    const/4 v0, 0x0

    .line 16211
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    sparse-switch p1, :sswitch_data_0

    .line 16219
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 16220
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputChannel"

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

    .line 16213
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    .line 16214
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    goto :goto_0

    .line 16216
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    goto :goto_0

    .line 16222
    :cond_0
    if-eqz v0, :cond_1

    .line 16223
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputChannel;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 16225
    :cond_1
    return-object v0

    .line 16211
    nop

    :sswitch_data_0
    .sparse-switch
        -0x50148ed2 -> :sswitch_1
        -0x1173e17a -> :sswitch_0
    .end sparse-switch
.end method