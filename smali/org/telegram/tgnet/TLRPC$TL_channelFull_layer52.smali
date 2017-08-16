.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;
.super Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull_layer52"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5590
    const v0, -0x68411a9e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5589
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

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

    .line 5594
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    .line 5595
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->can_view_participants:Z

    .line 5596
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->can_set_username:Z

    .line 5597
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->id:I

    .line 5598
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->about:Ljava/lang/String;

    .line 5599
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 5600
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->participants_count:I

    .line 5602
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 5603
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->admins_count:I

    .line 5605
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 5606
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->kicked_count:I

    .line 5608
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->read_inbox_max_id:I

    .line 5609
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->unread_count:I

    .line 5610
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->unread_important_count:I

    .line 5611
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5612
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5613
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 5614
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5615
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_5

    .line 5616
    if-eqz p2, :cond_6

    .line 5617
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
    :cond_3
    move v4, v6

    .line 5595
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 5596
    goto/16 :goto_1

    .line 5621
    .restart local v2    # "magic":I
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 5622
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_8

    .line 5623
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v3

    .line 5624
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    if-nez v3, :cond_7

    .line 5638
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_6
    :goto_3
    return-void

    .line 5627
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_7
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5622
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5629
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_8
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_9

    .line 5630
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->migrated_from_chat_id:I

    .line 5632
    :cond_9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_a

    .line 5633
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->migrated_from_max_id:I

    .line 5635
    :cond_a
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_6

    .line 5636
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->pinned_msg_id:I

    goto :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5641
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5642
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->can_view_participants:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    .line 5643
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->can_set_username:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    or-int/lit8 v2, v2, 0x40

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    .line 5644
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5645
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5646
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->about:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5647
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5648
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->participants_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5650
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5651
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->admins_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5653
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 5654
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->kicked_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5656
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->read_inbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5657
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->unread_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5658
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->unread_important_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5659
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5660
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5661
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5662
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5663
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5664
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5665
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 5666
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$BotInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5665
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5642
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto :goto_0

    .line 5643
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v2, v2, -0x41

    goto :goto_1

    .line 5668
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 5669
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->migrated_from_chat_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5671
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 5672
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->migrated_from_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5674
    :cond_7
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_8

    .line 5675
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;->pinned_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5677
    :cond_8
    return-void
.end method
