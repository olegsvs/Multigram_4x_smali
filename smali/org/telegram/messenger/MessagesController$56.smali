.class Lorg/telegram/messenger/MessagesController$56;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$dialog_id:J

.field final synthetic val$first_unread:I

.field final synthetic val$isCache:Z

.field final synthetic val$isChannel:Z

.field final synthetic val$isEnd:Z

.field final synthetic val$last_date:I

.field final synthetic val$last_message_id:I

.field final synthetic val$loadIndex:I

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field final synthetic val$offset_date:I

.field final synthetic val$queryFromServer:Z

.field final synthetic val$unread_count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JZIIZIIIIIZIIIZ)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 2928
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesController$56;->val$isCache:Z

    iput p6, p0, Lorg/telegram/messenger/MessagesController$56;->val$count:I

    iput p7, p0, Lorg/telegram/messenger/MessagesController$56;->val$load_type:I

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$56;->val$queryFromServer:Z

    iput p9, p0, Lorg/telegram/messenger/MessagesController$56;->val$first_unread:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$56;->val$max_id:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$56;->val$offset_date:I

    iput p12, p0, Lorg/telegram/messenger/MessagesController$56;->val$classGuid:I

    iput p13, p0, Lorg/telegram/messenger/MessagesController$56;->val$last_message_id:I

    iput-boolean p14, p0, Lorg/telegram/messenger/MessagesController$56;->val$isChannel:Z

    move/from16 v0, p15

    iput v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$loadIndex:I

    move/from16 v0, p16

    iput v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$unread_count:I

    move/from16 v0, p17

    iput v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$last_date:I

    move/from16 v0, p18

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$56;->val$isEnd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 2931
    const/4 v14, 0x0

    .line 2932
    .local v14, "createDialog":Z
    const/16 v23, 0x0

    .line 2933
    .local v23, "isMegagroup":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v5, :cond_1

    .line 2934
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    long-to-int v5, v8

    neg-int v6, v5

    .line 2935
    .local v6, "channelId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2936
    .local v17, "channelPts":Ljava/lang/Integer;
    if-nez v17, :cond_0

    .line 2937
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 2938
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    .line 2939
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$messages_Messages;->pts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    const/4 v14, 0x1

    .line 2941
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_3

    .line 2942
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    .line 2948
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2949
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2950
    .local v18, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v18

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ne v5, v6, :cond_4

    .line 2951
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    .line 2956
    .end local v4    # "a":I
    .end local v6    # "channelId":I
    .end local v17    # "channelPts":Ljava/lang/Integer;
    .end local v18    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    long-to-int v0, v8

    move/from16 v24, v0

    .line 2957
    .local v24, "lower_id":I
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    const/16 v5, 0x20

    shr-long/2addr v8, v5

    long-to-int v0, v8

    move/from16 v20, v0

    .line 2958
    .local v20, "high_id":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$isCache:Z

    if-nez v5, :cond_2

    .line 2959
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    .line 2961
    :cond_2
    const/4 v5, 0x1

    move/from16 v0, v20

    if-eq v0, v5, :cond_5

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$isCache:Z

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 2962
    new-instance v5, Lorg/telegram/messenger/MessagesController$56$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/MessagesController$56$1;-><init>(Lorg/telegram/messenger/MessagesController$56;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3077
    :goto_2
    return-void

    .line 2944
    .end local v20    # "high_id":I
    .end local v24    # "lower_id":I
    .restart local v6    # "channelId":I
    .restart local v17    # "channelPts":Ljava/lang/Integer;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v5, v6}, Lorg/telegram/messenger/MessagesController;->access$4400(Lorg/telegram/messenger/MessagesController;I)V

    goto :goto_0

    .line 2948
    .restart local v4    # "a":I
    .restart local v18    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2970
    .end local v4    # "a":I
    .end local v6    # "channelId":I
    .end local v17    # "channelPts":Ljava/lang/Integer;
    .end local v18    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v20    # "high_id":I
    .restart local v24    # "lower_id":I
    :cond_5
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 2971
    .local v33, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 2972
    .local v19, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 2973
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/telegram/tgnet/TLRPC$User;

    .line 2974
    .local v31, "u":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v31

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2972
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2976
    .end local v31    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 2977
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2978
    .local v16, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, v16

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2976
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2980
    .end local v16    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 2981
    .local v30, "size":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$isCache:Z

    if-nez v5, :cond_13

    .line 2982
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 2983
    .local v21, "inboxValue":Ljava/lang/Integer;
    if-nez v21, :cond_8

    .line 2984
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 2985
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v5, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2988
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 2989
    .local v29, "outboxValue":Ljava/lang/Integer;
    if-nez v29, :cond_9

    .line 2990
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 2991
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v5, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2994
    :cond_9
    const/4 v4, 0x0

    :goto_5
    move/from16 v0, v30

    if-ge v4, v0, :cond_12

    .line 2995
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2996
    .local v25, "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$isCache:Z

    if-nez v5, :cond_a

    move-object/from16 v0, v25

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v5, :cond_a

    move-object/from16 v0, v25

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v5, :cond_a

    .line 2997
    const/4 v5, 0x1

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 2999
    :cond_a
    if-eqz v23, :cond_b

    .line 3000
    move-object/from16 v0, v25

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v7, -0x80000000

    or-int/2addr v5, v7

    move-object/from16 v0, v25

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3003
    :cond_b
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v5, :cond_d

    .line 3005
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    if-eqz v5, :cond_c

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move-object/from16 v0, v25

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-ne v5, v7, :cond_c

    .line 2994
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3008
    :cond_c
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/tgnet/TLRPC$User;

    .line 3009
    .local v32, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_d

    move-object/from16 v0, v32

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v5, :cond_d

    .line 3010
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    move-object/from16 v0, v25

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 3011
    move-object/from16 v0, v25

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v5, v5, 0x40

    move-object/from16 v0, v25

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3014
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_d
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v5, :cond_e

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v5, :cond_f

    .line 3015
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 3016
    const/4 v5, 0x0

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    goto :goto_6

    .line 3018
    :cond_f
    move-object/from16 v0, v25

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v5, :cond_10

    move-object/from16 v5, v29

    :goto_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v25

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v5, v7, :cond_11

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, v25

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto :goto_6

    :cond_10
    move-object/from16 v5, v21

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    goto :goto_8

    .line 3021
    .end local v25    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesController$56;->val$load_type:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesController$56;->val$max_id:I

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    .line 3023
    .end local v21    # "inboxValue":Ljava/lang/Integer;
    .end local v29    # "outboxValue":Ljava/lang/Integer;
    :cond_13
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 3024
    .local v28, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 3025
    .local v27, "messagesToReload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 3026
    .local v34, "webpagesToReload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    const/16 v22, 0x0

    .line 3027
    .local v22, "inputChannel":Lorg/telegram/tgnet/TLRPC$InputChannel;
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v30

    if-ge v4, v0, :cond_19

    .line 3028
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3029
    .restart local v25    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialog_id:J

    move-object/from16 v0, v25

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3030
    new-instance v26, Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 3031
    .local v26, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3032
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesController$56;->val$isCache:Z

    if-eqz v5, :cond_15

    .line 3033
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v5, :cond_16

    .line 3034
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    if-eqz v5, :cond_15

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v5, v5

    if-eqz v5, :cond_14

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v5, v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_15

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    const/16 v7, 0x46

    if-ge v5, v7, :cond_15

    .line 3035
    :cond_14
    move-object/from16 v0, v25

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3027
    :cond_15
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 3037
    :cond_16
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v5, :cond_15

    .line 3038
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v5, :cond_17

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    if-gt v5, v7, :cond_17

    .line 3039
    move-object/from16 v0, v25

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3040
    :cond_17
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    if-eqz v5, :cond_15

    .line 3041
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 3042
    .local v15, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v15, :cond_18

    .line 3043
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3044
    .restart local v15    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3046
    :cond_18
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3051
    .end local v15    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v25    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_19
    new-instance v5, Lorg/telegram/messenger/MessagesController$56$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v34

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController$56$2;-><init>(Lorg/telegram/messenger/MessagesController$56;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2
.end method
