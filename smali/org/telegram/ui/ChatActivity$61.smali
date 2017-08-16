.class Lorg/telegram/ui/ChatActivity$61;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createChatAttachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 3908
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedButton(I)V
    .locals 23
    .param p1, "button"    # I

    .prologue
    .line 3911
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3954
    :cond_0
    :goto_0
    return-void

    .line 3914
    :cond_1
    const/4 v3, 0x7

    move/from16 v0, p1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3915
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 3916
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v20

    .line 3917
    .local v20, "selectedPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3918
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3919
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3920
    .local v16, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3921
    .local v21, "ttls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3922
    .local v18, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 3923
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3924
    .local v19, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v3, :cond_4

    .line 3925
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_3

    .line 3926
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    move-object/from16 v0, v19

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v6, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    move-object/from16 v0, v19

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v8, v8, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move-object/from16 v0, v19

    iget-object v9, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v9, v9, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move-object/from16 v0, v19

    iget-object v10, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    move-object/from16 v0, v19

    iget-object v14, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget v15, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    invoke-static/range {v3 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 3928
    :cond_3
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    move-object/from16 v0, v19

    iget-object v14, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iget v15, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    invoke-static/range {v3 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 3932
    :cond_4
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 3933
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3934
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3935
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3936
    move-object/from16 v0, v19

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3943
    :cond_5
    :goto_4
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    goto/16 :goto_1

    .line 3934
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 3935
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 3937
    :cond_8
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 3938
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3939
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3940
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3941
    move-object/from16 v0, v19

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3939
    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    .line 3940
    :cond_a
    const/4 v3, 0x0

    goto :goto_6

    .line 3945
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .end local v19    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v7, 0x4

    move/from16 v0, p1

    if-ne v0, v7, :cond_c

    const/4 v10, 0x1

    :goto_7
    move-object/from16 v7, v16

    move-object/from16 v8, v18

    move-object/from16 v11, v21

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ZLjava/util/ArrayList;)V

    .line 3946
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 3947
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 3945
    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    .line 3950
    .end local v2    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    .end local v20    # "selectedPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .end local v21    # "ttls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 3951
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissWithButtonClick(I)V

    .line 3953
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    move/from16 v0, p1

    # invokes: Lorg/telegram/ui/ChatActivity;->processSelectedAttach(I)V
    invoke-static {v3, v0}, Lorg/telegram/ui/ChatActivity;->access$15200(Lorg/telegram/ui/ChatActivity;I)V

    goto/16 :goto_0
.end method

.method public didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 3963
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3968
    :cond_0
    :goto_0
    return-void

    .line 3966
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 3967
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto :goto_0
.end method

.method public getRevealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 3958
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAttachButton()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public onCameraOpened()V
    .locals 1

    .prologue
    .line 3972
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$61;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 3973
    return-void
.end method
