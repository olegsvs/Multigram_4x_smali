.class public Lorg/telegram/tgnet/TLRPC$EncryptedChat;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptedChat"
.end annotation


# instance fields
.field public a_or_b:[B

.field public access_hash:J

.field public admin_id:I

.field public auth_key:[B

.field public date:I

.field public exchange_id:J

.field public future_auth_key:[B

.field public future_key_fingerprint:J

.field public g_a:[B

.field public g_a_or_b:[B

.field public id:I

.field public in_seq_no:I

.field public key_create_date:I

.field public key_fingerprint:J

.field public key_hash:[B

.field public key_use_count_in:S

.field public key_use_count_out:S

.field public layer:I

.field public nonce:[B

.field public participant_id:I

.field public seq_in:I

.field public seq_out:I

.field public ttl:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26447
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 26474
    const/4 v0, 0x0

    .line 26475
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    sparse-switch p1, :sswitch_data_0

    .line 26498
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 26499
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in EncryptedChat"

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

    .line 26477
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;-><init>()V

    .line 26478
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_0

    .line 26480
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;-><init>()V

    .line 26481
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_0

    .line 26483
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;-><init>()V

    .line 26484
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_0

    .line 26486
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;-><init>()V

    .line 26487
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_0

    .line 26489
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatEmpty;-><init>()V

    .line 26490
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_0

    .line 26492
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;-><init>()V

    .line 26493
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_0

    .line 26495
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_0

    .line 26501
    :cond_0
    if-eqz v0, :cond_1

    .line 26502
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 26504
    :cond_1
    return-object v0

    .line 26475
    nop

    :sswitch_data_0
    .sparse-switch
        -0x54813f60 -> :sswitch_4
        -0x3787ad82 -> :sswitch_1
        -0x5a931ca -> :sswitch_2
        -0x2565849 -> :sswitch_0
        0x13d6dd27 -> :sswitch_6
        0x3bf703dc -> :sswitch_5
        0x6601d14f -> :sswitch_3
    .end sparse-switch
.end method
