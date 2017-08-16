.class public Lorg/telegram/tgnet/TLRPC$ContactLink;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLink"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10905
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ContactLink;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 10908
    const/4 v0, 0x0

    .line 10909
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    sparse-switch p1, :sswitch_data_0

    .line 10923
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 10924
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ContactLink"

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

    .line 10911
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkNone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkNone;-><init>()V

    .line 10912
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_0

    .line 10914
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;-><init>()V

    .line 10915
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_0

    .line 10917
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkHasPhone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkHasPhone;-><init>()V

    .line 10918
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_0

    .line 10920
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkUnknown;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkUnknown;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_0

    .line 10926
    :cond_0
    if-eqz v0, :cond_1

    .line 10927
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ContactLink;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10929
    :cond_1
    return-object v0

    .line 10909
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2afd3d30 -> :sswitch_1
        -0x1122c53 -> :sswitch_0
        0x268f3f59 -> :sswitch_2
        0x5f4f9247 -> :sswitch_3
    .end sparse-switch
.end method
