.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.super Lorg/telegram/tgnet/TLRPC$ChatFull;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5493
    const v0, -0x6a34a0a9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5492
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5497
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 5498
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_view_participants:Z

    .line 5499
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_set_username:Z

    .line 5500
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->id:I

    .line 5501
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->about:Ljava/lang/String;

    .line 5502
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 5503
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->participants_count:I

    .line 5505
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 5506
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->admins_count:I

    .line 5508
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 5509
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->kicked_count:I

    .line 5511
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 5512
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->banned_count:I

    .line 5514
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_inbox_max_id:I

    .line 5515
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_outbox_max_id:I

    .line 5516
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->unread_count:I

    .line 5517
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5518
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5519
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 5520
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5521
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_6

    .line 5522
    if-eqz p2, :cond_7

    .line 5523
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_4
    move v4, v6

    .line 5498
    goto/16 :goto_0

    :cond_5
    move v4, v6

    .line 5499
    goto/16 :goto_1

    .line 5527
    .restart local v2    # "magic":I
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 5528
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 5529
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v3

    .line 5530
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    if-nez v3, :cond_8

    .line 5544
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_7
    :goto_3
    return-void

    .line 5533
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_8
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5528
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5535
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_a

    .line 5536
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_chat_id:I

    .line 5538
    :cond_a
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_b

    .line 5539
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_max_id:I

    .line 5541
    :cond_b
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    .line 5542
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->pinned_msg_id:I

    goto :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5547
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5548
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_view_participants:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 5549
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_set_username:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    or-int/lit8 v2, v2, 0x40

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 5550
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5551
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5552
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->about:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5553
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5554
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->participants_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5556
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5557
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->admins_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5559
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 5560
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->kicked_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5562
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 5563
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->banned_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5565
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_inbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5566
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_outbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5567
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->unread_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5568
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5569
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5570
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5571
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5572
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5573
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5574
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 5575
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$BotInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5574
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5548
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto/16 :goto_0

    .line 5549
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, -0x41

    goto/16 :goto_1

    .line 5577
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 5578
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_chat_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5580
    :cond_7
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 5581
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5583
    :cond_8
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_9

    .line 5584
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->pinned_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5586
    :cond_9
    return-void
.end method
