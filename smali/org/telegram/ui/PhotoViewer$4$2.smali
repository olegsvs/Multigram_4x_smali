.class Lorg/telegram/ui/PhotoViewer$4$2;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$4;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$4;

.field final synthetic val$deleteForAll:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$4;[Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$4;

    .prologue
    .line 1634
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$4$2;->val$deleteForAll:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 1703
    :cond_0
    :goto_0
    return-void

    .line 1641
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 1642
    .local v12, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1644
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v3, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    const/4 v4, 0x0

    .line 1648
    .local v4, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 1649
    .local v5, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    long-to-int v2, v6

    if-nez v2, :cond_2

    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-eqz v2, :cond_2

    .line 1650
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1651
    .restart local v4    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    const/16 v15, 0x20

    shr-long/2addr v6, v15

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v5

    .line 1655
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v6, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$4$2;->val$deleteForAll:[Z

    const/4 v15, 0x0

    aget-boolean v7, v7, v15

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V

    goto/16 :goto_0

    .line 1657
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v5    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v12    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1661
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1662
    .local v13, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1663
    .local v9, "currentLocation":Lorg/telegram/tgnet/TLRPC$FileLocation;
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v2, :cond_4

    .line 1664
    const/4 v13, 0x0

    .line 1666
    :cond_4
    const/4 v8, 0x0

    .line 1667
    .local v8, "current":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1668
    if-eqz v13, :cond_7

    .line 1669
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1670
    .local v14, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v7, v7, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->access$5700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v6, v7, :cond_5

    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v15, v15, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v15}, Lorg/telegram/ui/PhotoViewer;->access$5700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v15

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v16, v0

    cmp-long v6, v6, v16

    if-nez v6, :cond_5

    .line 1671
    const/4 v8, 0x1

    .line 1679
    .end local v14    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_6
    :goto_1
    if-eqz v8, :cond_8

    .line 1680
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 1675
    :cond_7
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v6

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v6, :cond_6

    iget-wide v6, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v2

    iget-wide v0, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v16, v0

    cmp-long v2, v6, v16

    if-nez v2, :cond_6

    .line 1676
    const/4 v8, 0x1

    goto :goto_1

    .line 1682
    :cond_8
    if-eqz v13, :cond_0

    .line 1683
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    .line 1684
    .local v11, "inputPhoto":Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;
    iget-wide v6, v13, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v6, v11, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;->id:J

    .line 1685
    iget-wide v6, v13, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v6, v11, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;->access_hash:J

    .line 1686
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    .line 1687
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    iget-wide v0, v13, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhoto(IJ)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1689
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5800(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1690
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    .line 1694
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v10

    .line 1695
    .local v10, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v10, v2, :cond_a

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .line 1698
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v6, -0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v2, v6}, Lorg/telegram/ui/PhotoViewer;->access$5402(Lorg/telegram/ui/PhotoViewer;I)I

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$4$2;->this$1:Lorg/telegram/ui/PhotoViewer$4;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$4;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v6, 0x1

    # invokes: Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V
    invoke-static {v2, v10, v6}, Lorg/telegram/ui/PhotoViewer;->access$5900(Lorg/telegram/ui/PhotoViewer;IZ)V

    goto/16 :goto_0
.end method
