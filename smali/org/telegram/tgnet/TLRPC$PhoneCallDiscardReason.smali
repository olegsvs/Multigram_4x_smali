.class public Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneCallDiscardReason"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7364
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7367
    const/4 v0, 0x0

    .line 7368
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    sparse-switch p1, :sswitch_data_0

    .line 7382
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 7383
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in PhoneCallDiscardReason"

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

    .line 7370
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;-><init>()V

    .line 7371
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    goto :goto_0

    .line 7373
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    .line 7374
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    goto :goto_0

    .line 7376
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    .line 7377
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    goto :goto_0

    .line 7379
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    goto :goto_0

    .line 7385
    :cond_0
    if-eqz v0, :cond_1

    .line 7386
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 7388
    :cond_1
    return-object v0

    .line 7368
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a1bdcff -> :sswitch_2
        -0x1f6a3e60 -> :sswitch_3
        -0x5081737 -> :sswitch_1
        0x57adc690 -> :sswitch_0
    .end sparse-switch
.end method
