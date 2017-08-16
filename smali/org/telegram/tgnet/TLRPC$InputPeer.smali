.class public Lorg/telegram/tgnet/TLRPC$InputPeer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputPeer"
.end annotation


# instance fields
.field public access_hash:J

.field public channel_id:I

.field public chat_id:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21319
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 21326
    const/4 v0, 0x0

    .line 21327
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    sparse-switch p1, :sswitch_data_0

    .line 21344
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 21345
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputPeer"

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

    .line 21329
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 21330
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 21332
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 21333
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 21335
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    .line 21336
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 21338
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    .line 21339
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 21341
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_0

    .line 21347
    :cond_0
    if-eqz v0, :cond_1

    .line 21348
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 21350
    :cond_1
    return-object v0

    .line 21327
    nop

    :sswitch_data_0
    .sparse-switch
        0x179be863 -> :sswitch_1
        0x20adaef8 -> :sswitch_4
        0x7b8e7de6 -> :sswitch_0
        0x7da07ec9 -> :sswitch_3
        0x7f3b18ea -> :sswitch_2
    .end sparse-switch
.end method
